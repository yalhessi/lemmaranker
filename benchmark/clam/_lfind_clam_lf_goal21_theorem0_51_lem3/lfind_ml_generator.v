Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal21.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal21_theorem0_51_lem3/goal21_lfind_orig.ml"  adtind.goal21.append.
Success.
