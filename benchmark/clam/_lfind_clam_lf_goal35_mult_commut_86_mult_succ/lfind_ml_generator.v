Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal35.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal35_mult_commut_86_mult_succ/goal35_lfind_orig.ml"  adtind.goal35.plus adtind.goal35.mult.
Success.
