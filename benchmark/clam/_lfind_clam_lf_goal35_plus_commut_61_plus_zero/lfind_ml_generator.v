Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal35.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal35_plus_commut_61_plus_zero/goal35_lfind_orig.ml"  adtind.goal35.plus.
Success.
