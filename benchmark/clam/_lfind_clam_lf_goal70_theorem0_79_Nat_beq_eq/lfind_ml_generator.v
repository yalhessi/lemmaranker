Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal70.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal70_theorem0_79_Nat_beq_eq/goal70_lfind_orig.ml"  adtind.goal70.insort adtind.goal70.eqb adtind.goal70.less adtind.goal70.count.
Success.
