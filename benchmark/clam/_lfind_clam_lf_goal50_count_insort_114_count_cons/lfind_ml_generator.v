Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal50.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal50_count_insort_114_count_cons/goal50_lfind_orig.ml"  adtind.goal50.insort adtind.goal50.eqb adtind.goal50.count.
Success.
