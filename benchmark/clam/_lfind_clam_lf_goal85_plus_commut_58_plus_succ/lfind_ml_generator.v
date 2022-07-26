Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal85.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal85_plus_commut_58_plus_succ/goal85_lfind_orig.ml"  adtind.goal85.plus.
Success.
