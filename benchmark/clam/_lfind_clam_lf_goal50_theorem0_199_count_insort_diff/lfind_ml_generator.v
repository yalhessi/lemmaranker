Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal50.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal50_theorem0_199_count_insort_diff/goal50_lfind_orig.ml"  adtind.goal50.eqb adtind.goal50.count adtind.goal50.sort adtind.goal50.insort.
Success.
