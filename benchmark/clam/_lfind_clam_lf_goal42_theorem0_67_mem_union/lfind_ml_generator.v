Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal42.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal42_theorem0_67_mem_union/goal42_lfind_orig.ml"  adtind.goal42.eqb adtind.goal42.lst_mem adtind.goal42.lst_union.
Success.
