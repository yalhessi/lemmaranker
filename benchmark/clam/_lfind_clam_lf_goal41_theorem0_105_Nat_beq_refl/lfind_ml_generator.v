Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal41.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal41_theorem0_105_Nat_beq_refl/goal41_lfind_orig.ml"  adtind.goal41.lst_eq adtind.goal41.lst_subset Coq.Init.Datatypes.orb adtind.goal41.eqb adtind.goal41.lst_intersection adtind.goal41.lst_mem.
Success.
