Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal40.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal40_subset_refl_97_append_single/goal40_lfind_orig.ml"  adtind.goal40.lst_subset.
Success.
