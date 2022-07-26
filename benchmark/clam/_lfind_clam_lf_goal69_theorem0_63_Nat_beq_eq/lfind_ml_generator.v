Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal69.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal69_theorem0_63_Nat_beq_eq/goal69_lfind_orig.ml"  Coq.Init.Logic.not adtind.goal69.less adtind.goal69.insort Coq.Init.Datatypes.orb adtind.goal69.eqb adtind.goal69.mem.
Success.
