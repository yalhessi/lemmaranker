Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal57.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal57_theorem0_35_lem/goal57_lfind_orig.ml"  adtind.goal57.drop.
Success.
