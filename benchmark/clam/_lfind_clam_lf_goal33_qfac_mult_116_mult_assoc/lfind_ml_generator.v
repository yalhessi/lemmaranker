Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal33.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal33_qfac_mult_116_mult_assoc/goal33_lfind_orig.ml"  adtind.goal33.mult adtind.goal33.qfac.
Success.
