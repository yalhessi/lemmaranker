Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal71.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal71_theorem0_75_Nat_beq_eq/goal71_lfind_orig.ml"  Coq.Init.Logic.not adtind.goal71.eqb.
Success.
