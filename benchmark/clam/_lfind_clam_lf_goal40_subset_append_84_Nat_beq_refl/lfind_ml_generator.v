Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal40.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal40_subset_append_84_Nat_beq_refl/goal40_lfind_orig.ml"  adtind.goal40.lst_subset adtind.goal40.append Coq.Init.Datatypes.orb adtind.goal40.eqb adtind.goal40.lst_mem.
Success.
