Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal50.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal50_count_insort_diff_158_eqb_diff/goal50_lfind_orig.ml"  Coq.Init.Logic.not adtind.goal50.insort adtind.goal50.less adtind.goal50.count adtind.goal50.eqb.
Success.
