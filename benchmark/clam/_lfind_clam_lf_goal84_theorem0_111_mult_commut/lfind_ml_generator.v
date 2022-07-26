Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal84.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal84_theorem0_111_mult_commut/goal84_lfind_orig.ml"  adtind.goal84.qfac adtind.goal84.mult adtind.goal84.fac.
Success.
