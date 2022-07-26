Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal79.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal79_theorem0_44_append_assoc/goal79_lfind_orig.ml"  adtind.goal79.append adtind.goal79.rev.
Success.
