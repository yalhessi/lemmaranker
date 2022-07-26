Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal34.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal34_plus_commut_57_plus_zero/goal34_lfind_orig.ml"  adtind.goal34.plus.
Success.
