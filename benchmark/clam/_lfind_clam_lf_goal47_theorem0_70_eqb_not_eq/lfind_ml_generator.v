Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal47.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal47_theorem0_70_eqb_not_eq/goal47_lfind_orig.ml"  Coq.Init.Logic.not Coq.Init.Datatypes.orb adtind.goal47.eqb.
Success.
