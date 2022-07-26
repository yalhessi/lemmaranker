Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal33.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_smallclam_lf_goal33_mult_succ_82_plus_assoc/goal33_lfind_orig.ml"  adtind.goal33.mult adtind.goal33.plus.
Success.
