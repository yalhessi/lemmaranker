import coq_serapy
import re
import sexpdata
import zss

# def is_trivial(prelude, prefix, lemma):
#     if isinstance(prefix, str):
#         prefix = [s.strip() + '.' for s in prefix.strip().split(".")[:-1]]
#     proof_cmds = [lemma+".", "Proof.",
#         "trivial.",
#         "Qed."]
#     with coq_serapy.SerapiContext(
#             ["sertop", "--implicit"],    
#             None,
#             prelude) as coq:
#         for stmt in prefix:
#             coq.run_stmt(stmt)        
#         cmds_left, cmds_run = coq.run_into_next_proof(
#             proof_cmds)
#         try:
#             _, _ = coq.finish_proof(cmds_left)
#             return True
#         except coq_serapy.CoqExn:
#             return False 

# def simplify_lemma(prelude, prefix, lemma):
#     lemmaname = lemma.split(":")[0]
#     if isinstance(prefix, str):
#         prefix = [s.strip() + '.' for s in prefix.strip().split(".")[:-1]]
#     with coq_serapy.SerapiContext(
#             ["sertop", "--implicit"],    
#             None,
#             prelude) as coq:
#         for stmt in prefix:
#             coq.run_stmt(stmt)
#         coq.run_stmt(lemma + ".")
#         coq.run_stmt("simpl.")
#         return lemmaname, coq.goals.strip()

def is_proof_complete(prelude, prefix, proof_cmds, stmts=[]):
    if isinstance(prefix, str):
        prefix = [s.strip() + '.' for s in prefix.strip().split(".")[:-1]]
    with coq_serapy.SerapiContext(
            ["sertop", "--implicit"],    
            None,
            prelude) as coq:
        for stmt in prefix:
            coq.run_stmt(stmt.strip('-'))
        for stmt in stmts:
            coq.run_stmt(stmt)
        try:
            cmds_left, cmds_run = coq.run_into_next_proof(
            proof_cmds)
            r = coq.finish_proof(cmds_left)
            return True
        except coq_serapy.CoqExn:
            return False 
        except:
            return False

def is_weaker_than(prelude, prefix, theorem1_name, theorem1, theorem2_name, theorem2):
    '''
    If theorem1 is weaker than theorem 2, it means we can prove theorem1 assuming theorem 2 is true.
    '''
    setup_cmds = [theorem2, "Admitted."]
    apply_proof_cmds = [theorem1, "intros.", f"apply {theorem2_name}.", "Qed."]
    is_proof_complete_apply = is_proof_complete(prelude, prefix, apply_proof_cmds, setup_cmds)
    rewrite_proof_cmds = [theorem1, "intros.", f"rewrite -> {theorem2_name}.", "reflexivity.", "Qed."]
    is_proof_complete_rewrite = is_proof_complete(prelude, prefix, rewrite_proof_cmds, setup_cmds)
    rewrite_proof_cmds = [theorem1, "intros.", f"rewrite <- {theorem2_name}.", "reflexivity.", "Qed."]
    is_proof_complete_rewrite_left = is_proof_complete(prelude, prefix, rewrite_proof_cmds, setup_cmds)
    return is_proof_complete_apply or is_proof_complete_rewrite or is_proof_complete_rewrite_left

def is_stronger_than(prelude, prefix, theorem1_name, theorem1, theorem2_name, theorem2):
    return is_weaker_than(prelude, prefix, theorem2_name, theorem2, theorem1_name, theorem1)

def is_version_of(prelude, prefix, theorem1_name, theorem1, theorem2_name, theorem2):
    isweaker = is_weaker_than(prelude, prefix, theorem1_name, theorem1, theorem2_name, theorem2)
    isstronger = is_stronger_than(prelude, prefix, theorem1_name, theorem1, theorem2_name, theorem2)
    return isweaker and isstronger

def disable_notations(prelude, prefix, theorem):
    if isinstance(prefix, str):
        prefix = [s.strip() + '.' for s in prefix.strip().split(".")[:-1]]
    with coq_serapy.SerapiContext(
            ["sertop", "--implicit"],
            None,
            prelude) as coq:
        for stmt in prefix:
            coq.run_stmt(stmt.strip('-'))
        coq.run_stmt('Unset Printing Notations.')
        coq.run_stmt(theorem)
        return coq.goals

def can_use_tactic(prelude, prefix, theorem, proof_cmds, tactic):
  with coq_serapy.SerapiContext(
          ["sertop", "--implicit"],    
          None,
          prelude) as coq:
    for stmt in prefix:
        coq.run_stmt(stmt)
    coq.run_stmt(theorem)
    for cmd in proof_cmds:
        coq.run_stmt(cmd)
    try:
      coq.run_stmt(tactic)
      return True
    except:
      return False  

def can_use_helper(prelude, prefix, theorem, proof_cmds, helper):
  return can_use_tactic(prelude, prefix, theorem, proof_cmds, f'apply {helper} || rewrite {helper} || rewrite <- {helper} || fail.')

def can_use_IH_before(frame, index):
  prelude = frame.at[index, 'prelude']
  prefix = coq_serapy.read_commands(frame.at[index, 'prefix'])
  helper_lemma = frame.at[index, 'helper_lemma']
  helper_lemma_proof = coq_serapy.read_commands(frame.at[index, 'helper_lemma_proof'].replace('.', '. '))
  theorem = frame.at[index, 'theorem']
  proof_cmds_before, _ = split_theorem_proof(frame, index)
  IHs = get_IHs(frame, index)
  return any(can_use_helper(prelude, prefix + [helper_lemma] + helper_lemma_proof, theorem, proof_cmds_before, ih) for ih in IHs)

def can_use_IH_after(frame, index):
  if can_use_synth(frame, index):
    prelude = frame.at[index, 'prelude']
    prefix = coq_serapy.read_commands(frame.at[index, 'prefix'])
    helper_lemma = frame.at[index, 'helper_lemma']
    helper_lemma_proof = coq_serapy.read_commands(frame.at[index, 'helper_lemma_proof'].replace('.', '. '))
    synth_lemma = frame.at[index, 'lemma']
    synth_lemma_name = frame.at[index, 'lemma_name']
    theorem = frame.at[index, 'theorem']
    proof_cmds_before, _ = split_theorem_proof(frame, index)
    IHs = get_IHs(frame, index)
    return any(can_use_helper(prelude, 
                          prefix + [helper_lemma] + helper_lemma_proof + [synth_lemma, 'Admitted.'], 
                          theorem, 
                          proof_cmds_before + [f'apply {synth_lemma_name} || rewrite {synth_lemma_name} || rewrite <- {synth_lemma_name} || fail.'], 
                          ih) for ih in IHs)
  else:
    return False

def can_use_synth(frame, index):
  prelude = frame.at[index, 'prelude']
  prefix = coq_serapy.read_commands(frame.at[index, 'prefix'])
  helper_lemma = frame.at[index, 'helper_lemma']
  helper_lemma_proof = coq_serapy.read_commands(frame.at[index, 'helper_lemma_proof'].replace('.', '. '))
  synth_lemma = frame.at[index, 'lemma']
  synth_lemma_name = frame.at[index, 'lemma_name']
  theorem = frame.at[index, 'theorem']
  proof_cmds_before, _ = split_theorem_proof(frame, index)
  return can_use_helper(prelude, prefix + [helper_lemma] + helper_lemma_proof + [synth_lemma, 'Admitted.'], theorem, proof_cmds_before, synth_lemma_name)

def can_simpl_before(frame, index):
  prelude = frame.at[index, 'prelude']
  prefix = coq_serapy.read_commands(frame.at[index, 'prefix'])
  helper_lemma = frame.at[index, 'helper_lemma']
  helper_lemma_proof = coq_serapy.read_commands(frame.at[index, 'helper_lemma_proof'].replace('.', '. '))
  theorem = frame.at[index, 'theorem']
  proof_cmds_before, _ = split_theorem_proof(frame, index)
  return can_use_tactic(prelude, prefix + [helper_lemma] + helper_lemma_proof, theorem, proof_cmds_before, 'simpl || fail.')

def can_simpl_after(frame, index):
  if can_use_synth(frame, index):
    prelude = frame.at[index, 'prelude']
    prefix = coq_serapy.read_commands(frame.at[index, 'prefix'])
    helper_lemma = frame.at[index, 'helper_lemma']
    helper_lemma_proof = coq_serapy.read_commands(frame.at[index, 'helper_lemma_proof'].replace('.', '. '))
    synth_lemma = frame.at[index, 'lemma']
    synth_lemma_name = frame.at[index, 'lemma_name']
    theorem = frame.at[index, 'theorem']
    proof_cmds_before, _ = split_theorem_proof(frame, index)
    return can_use_tactic(prelude, 
                          prefix + [helper_lemma] + helper_lemma_proof + [synth_lemma, 'Admitted.'], 
                          theorem, 
                          proof_cmds_before + [f'apply {synth_lemma_name} || rewrite {synth_lemma_name} || rewrite <- {synth_lemma_name} || fail.'], 
                          'simpl || fail.')
  else:
    return False

def uses_IHs_before(frame, index):
  IHs = get_IHs(frame, index)
  print(IHs)
  cmds_before, _ = split_theorem_proof(frame, index)
  print(cmds_before)
  for cmd in cmds_before:
    for ih in IHs:
      if ih in cmd:
        return True
  return False

def get_IHs(frame, index):
  prelude = frame.at[index, 'prelude']
  prefix = coq_serapy.read_commands(frame.at[index, 'prefix'])
  helper_lemma = frame.at[index, 'helper_lemma']
  helper_lemma_proof = coq_serapy.read_commands(frame.at[index, 'helper_lemma_proof'].replace('.', '. '))
  theorem = frame.at[index, 'theorem']
  proof_cmds_before, _ = split_theorem_proof(frame, index)

  with coq_serapy.SerapiContext(
          ["sertop", "--implicit"],    
          None,
          prelude) as coq:
    for stmt in prefix:
        coq.run_stmt(stmt)
    coq.run_stmt(helper_lemma)
    for cmd in helper_lemma_proof:
        coq.run_stmt(cmd)
    coq.run_stmt(theorem)

    for cmd in proof_cmds_before:
        coq.run_stmt(cmd)
    IHs = []
    for hyp in coq.hypotheses:
        if hyp.startswith('IH'):
            IHs.append(hyp.split(":")[0].strip())
    return IHs

def split_theorem_proof(frame, index):
  proof_cmds = coq_serapy.read_commands(frame.at[index, "theorem_proof"].replace('.', '. '))
  proof_cmds_before = []
  proof_cmds_after = []
  found = False
  for cmd in proof_cmds:
    if 'lfind.' in cmd:
      found = True
      continue
    if not found:
      proof_cmds_before.append(cmd)
    else:
      proof_cmds_after.append(cmd)
  return proof_cmds_before, proof_cmds_after

def sexp_size(sexp):
  if isinstance(sexp, list):
    return sum(sexp_size(child) for child in sexp)
  else:
    return 1

def sexp_to_tree(sexp):
  if isinstance(sexp, list):
    tree = zss.Node(sexp[0])
    for i in range(1, len(sexp)):
      tree.addkid(sexp_to_tree(sexp[i]))
    return tree
  else:
    return zss.Node(sexp)

def ted_distance(s1, s2):
  return zss.distance(sexp_to_tree(sexpdata.loads(s1)), sexp_to_tree(sexpdata.loads(s2)), zss.Node.get_children, insert_cost, remove_cost, update_cost1)
  return zss.simple_distance(sexp_to_tree(s1), sexp_to_tree(s2), zss.Node.get_children, zss.Node.get_label, my_label_distance)

def insert_cost(n):
  return depth(n)

def remove_cost(n):
  return depth(n)

def update_cost1(n1, n2):
  return my_label_distance(zss.Node.get_label(n1), zss.Node.get_label(n2)) + abs(depth(n1) - depth(n2))

def update_cost2(n1, n2):
  children1 = zss.Node.get_children(n1)
  children2 = zss.Node.get_children(n2)
  if not children1:
    return depth(n2)
  if not children2:
    return depth(n1)
  dist = my_label_distance(zss.Node.get_label(n1), zss.Node.get_label(n2))
  if len(children1) > len(children2):
    small = children2
    big = children1
  else:
    small = children1
    big = children2
  for i in range(len(small)):
    dist += update_cost2(big[i], small[i])
  for i in range(len(small), len(big)):
    dist += insert_cost(big[i])
  return dist


def my_label_distance(l1, l2):
  if l1 == l2:
    return 0
  else:
    return 1

def depth(tree : zss.Node):
  if not zss.Node.get_children(tree):
    return 1
  else:
    return 1 + max(depth(child) for child in zss.Node.get_children(tree))

def ted(t1, t2):
  return ted_distance(t1, t2)

def sed(s1, s2):
  import editdistance
  return editdistance.eval(s1, s2)

def get_thereorem_body(s):
  if match := re.match(f'(Lemma|Theorem) (\w+)[ ]?:(?P<body>.+)', s):
    return match.groupdict()["body"].strip()
  else:
    return s

def get_goal(s):
  if match := re.match(f'(.*)(forall|exists) (.+),(?P<goal>[\w\W]+)', s):
    return match.groupdict()["goal"].strip()
  else:
    return s