Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal56.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal56_theorem0_36_lem/goal56_lfind_orig.ml"  adtind.goal56.drop.
Success.
