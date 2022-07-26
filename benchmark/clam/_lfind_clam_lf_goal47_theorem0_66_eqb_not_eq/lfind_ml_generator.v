Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal47.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal47_theorem0_66_eqb_not_eq/goal47_lfind_orig.ml"  Coq.Init.Logic.not adtind.goal47.insort Coq.Init.Datatypes.orb adtind.goal47.eqb adtind.goal47.mem.
Success.
