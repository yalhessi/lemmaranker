Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal80.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal80_theorem0_58_rev_rev/goal80_lfind_orig.ml"  adtind.goal80.append adtind.goal80.rev.
Success.
