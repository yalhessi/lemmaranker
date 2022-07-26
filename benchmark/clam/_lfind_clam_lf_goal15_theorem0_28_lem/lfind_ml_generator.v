Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal15.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal15_theorem0_28_lem/goal15_lfind_orig.ml"  adtind.goal15.plus.
Success.
