Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal8.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal8_theorem0_48_drop_Cons_assoc/goal8_lfind_orig.ml"  adtind.goal8.drop.
Success.
