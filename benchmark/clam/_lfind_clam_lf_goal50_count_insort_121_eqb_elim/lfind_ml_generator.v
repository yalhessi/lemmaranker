Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal50.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal50_count_insort_121_eqb_elim/goal50_lfind_orig.ml"  adtind.goal50.eqb Coq.Bool.Bool.Is_true adtind.goal50.count adtind.goal50.insort.
Success.