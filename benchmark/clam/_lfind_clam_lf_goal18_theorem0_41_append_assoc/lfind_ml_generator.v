Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal18.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal18_theorem0_41_append_assoc/goal18_lfind_orig.ml"  adtind.goal18.rev adtind.goal18.append.
Success.
