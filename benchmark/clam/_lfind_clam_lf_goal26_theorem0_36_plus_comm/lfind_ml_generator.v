Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal26.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal26_theorem0_36_plus_comm/goal26_lfind_orig.ml"  adtind.goal26.half adtind.goal26.plus.
Success.
