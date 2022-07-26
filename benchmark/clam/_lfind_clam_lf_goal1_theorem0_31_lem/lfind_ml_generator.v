Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal1.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal1_theorem0_31_lem/goal1_lfind_orig.ml"  adtind.goal1.double adtind.goal1.plus.
Success.
