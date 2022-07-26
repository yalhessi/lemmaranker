Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal76.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal76_theorem0_52_append_assoc/goal76_lfind_orig.ml"  adtind.goal76.qrevaflat adtind.goal76.append adtind.goal76.revflat.
Success.
