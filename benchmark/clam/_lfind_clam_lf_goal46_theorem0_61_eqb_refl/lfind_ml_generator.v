Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal46.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal46_theorem0_61_eqb_refl/goal46_lfind_orig.ml"  Coq.Init.Datatypes.orb adtind.goal46.eqb.
Success.
