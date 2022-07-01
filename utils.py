
import coq_serapy

def is_trivial(lemma, prelude, imports):
    proof_cmds = [lemma+".", "Proof.",
        "trivial.",
        "Qed."]
    with coq_serapy.SerapiContext(
            ["sertop", "--implicit"],    
            None,
            prelude) as coq:
        for imp in imports:
            coq.run_stmt(imp)
        cmds_left, cmds_run = coq.run_into_next_proof(
            proof_cmds)
        try:
            _, _ = coq.finish_proof(cmds_left)
            return True
        except coq_serapy.CoqExn:
            return False 

def simplify_lemma(lemma, prelude, imports):
    lemmaname = lemma.split(":")[0]
    with coq_serapy.SerapiContext(
            ["sertop", "--implicit"],    
            None,
            prelude) as coq:
        for imp in imports:
            coq.run_stmt(imp)
        coq.run_stmt(lemma + ".")
        coq.run_stmt("simpl.")
        return lemmaname, coq.goals.strip()

def is_proof_complete(prelude, imports, proof_cmds, stmts=[]):
    print(proof_cmds)
    with coq_serapy.SerapiContext(
            ["sertop", "--implicit"],    
            None,
            prelude) as coq:
        for imp in imports:
            coq.run_stmt(imp)
        for stmt in stmts:
            coq.run_stmt(stmt)
        try:
            cmds_left, cmds_run = coq.run_into_next_proof(
            proof_cmds)
            _, _ = coq.finish_proof(cmds_left)
            return True
        except coq_serapy.CoqExn:
            return False 
        except:
            return False

def is_weaker_than_human(human_lemma_name, synth_lemma, prelude, imports):
    if synth_lemma[len(synth_lemma)-1] == ".":
        name =  synth_lemma 
    else:
        name =  synth_lemma+"."
    apply_proof_cmds = [name, "Proof.",
        "intros.",
        f"apply {human_lemma_name}.",
        "Qed."]
    is_proof_complete_apply = is_proof_complete(prelude, imports, apply_proof_cmds)
    rewrite_proof_cmds = [name, "Proof.",
        "intros.",
        f"rewrite -> {human_lemma_name}.",
        "reflexivity.",
        "Qed."]
    is_proof_complete_rewrite = is_proof_complete(prelude, imports, rewrite_proof_cmds)
    rewrite_proof_cmds = [name, "Proof.",
        "intros.",
        f"rewrite <- {human_lemma_name}.",
        "reflexivity.",
        "Qed."]
    is_proof_complete_rewrite_left = is_proof_complete(prelude, imports, rewrite_proof_cmds)
    return is_proof_complete_apply or is_proof_complete_rewrite or is_proof_complete_rewrite_left

def is_stronger_than_human(human_lemma_name, human_lemma, synth_lemma, prelude, imports):
    synth_lemma_name = synth_lemma.split(":")[0].replace("Lemma ", "").strip()
    if synth_lemma[len(synth_lemma)-1] == ".":
        stmts = [synth_lemma, "Admitted."]
    else:
        stmts = [synth_lemma+".", "Admitted."]
    apply_proof_cmds = [human_lemma.replace(human_lemma_name, "humanlemma"), "Proof.",
        "intros.",
        f"apply {synth_lemma_name}.",
        "Qed."]
    is_proof_complete_apply = is_proof_complete(prelude, imports, apply_proof_cmds, stmts)
    rewrite_proof_cmds = [human_lemma.replace(human_lemma_name, "humanlemma"), "Proof.",
        "intros.",
        f"rewrite -> {synth_lemma_name}.",
        "reflexivity.",
        "Qed."]
    is_proof_complete_rewrite = is_proof_complete(prelude, imports, rewrite_proof_cmds, stmts)
    rewrite_proof_cmds = [human_lemma.replace(human_lemma_name, "humanlemma"), "Proof.",
        "intros.",
        f"rewrite <- {synth_lemma_name}.",
        "reflexivity.",
        "Qed."]
    is_proof_complete_rewrite_left = is_proof_complete(prelude, imports, rewrite_proof_cmds, stmts)
    return is_proof_complete_apply or is_proof_complete_rewrite or is_proof_complete_rewrite_left

def is_version_of_theorem(theorem_name, theorem, lemma, prelude, imports):
    isweaker = is_weaker_than_human(theorem_name, lemma, prelude, imports)
    isstronger = is_stronger_than_human(theorem_name, theorem, lemma, prelude, imports)
    if isweaker and isstronger:
        return True
    else:
        if isweaker:
            return True
    return False