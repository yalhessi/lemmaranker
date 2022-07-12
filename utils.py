
import coq_serapy

def is_trivial(lemma, prelude):
    proof_cmds = [lemma+".", "Proof.",
        "trivial.",
        "Qed."]
    with coq_serapy.SerapiContext(
            ["sertop", "--implicit"],    
            None,
            prelude) as coq:
        cmds_left, cmds_run = coq.run_into_next_proof(
            proof_cmds)
        try:
            _, _ = coq.finish_proof(cmds_left)
            return True
        except coq_serapy.CoqExn:
            return False 

def simplify_lemma(lemma, prelude):
    lemmaname = lemma.split(":")[0]
    with coq_serapy.SerapiContext(
            ["sertop", "--implicit"],    
            None,
            "") as coq:
        for stmt in prelude:
            coq.run_stmt(stmt)
        coq.run_stmt(lemma + ".")
        coq.run_stmt("simpl.")
        return lemmaname, coq.goals.strip()

def is_proof_complete(prelude, proof_cmds, stmts=[]):
    if isinstance(prelude, str):
        prelude = [s.strip() + '.' for s in prelude.strip().split(".")[:-1]]
    with coq_serapy.SerapiContext(
            ["sertop", "--implicit"],    
            None,
            "/home/yousef/lemmaranker/benchmark/smallclam") as coq:
        for stmt in prelude:
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

def is_weaker_than(theorem1_name, theorem1, theorem2_name, theorem2, prelude):
    '''
    If theorem1 is weaker than theorem 2, it means we can prove theorem1 assuming theorem 2 is true.
    '''
    setup_cmds = [theorem2, "Admitted."]
    apply_proof_cmds = [theorem1, "intros.", f"apply {theorem2_name}.", "Qed."]
    is_proof_complete_apply = is_proof_complete(prelude, apply_proof_cmds, setup_cmds)
    rewrite_proof_cmds = [theorem1, "intros.", f"rewrite -> {theorem2_name}.", "reflexivity.", "Qed."]
    is_proof_complete_rewrite = is_proof_complete(prelude, rewrite_proof_cmds, setup_cmds)
    rewrite_proof_cmds = [theorem1, "intros.", f"rewrite <- {theorem2_name}.", "reflexivity.", "Qed."]
    is_proof_complete_rewrite_left = is_proof_complete(prelude, rewrite_proof_cmds, setup_cmds)
    return is_proof_complete_apply or is_proof_complete_rewrite or is_proof_complete_rewrite_left

def is_stronger_than(theorem1_name, theorem1, theorem2_name, theorem2, prelude):
    return is_weaker_than(theorem2_name, theorem2, theorem1_name, theorem1, prelude)

def is_version_of(theorem1_name, theorem1, theorem2_name, theorem2, prelude):
    isweaker = is_weaker_than(theorem1_name, theorem1, theorem2_name, theorem2, prelude)
    isstronger = is_stronger_than(theorem1_name, theorem1, theorem2_name, theorem2, prelude)
    return isweaker and isstronger