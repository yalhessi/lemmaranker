Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal45.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal45_theorem0_61_Nat_beq_refl/goal45_lfind_orig.ml"  adtind.goal45.insort Coq.Init.Datatypes.orb adtind.goal45.eqb adtind.goal45.mem.
Success.
