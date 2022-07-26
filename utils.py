
from numpy import isin
import coq_serapy

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