Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal34.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal34_mult_eq_qmult_75_plus_qmult/goal34_lfind_orig.ml"  adtind.goal34.mult adtind.goal34.plus adtind.goal34.qmult.
Success.
