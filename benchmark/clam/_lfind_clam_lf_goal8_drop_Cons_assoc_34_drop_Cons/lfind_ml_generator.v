Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal8.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal8_drop_Cons_assoc_34_drop_Cons/goal8_lfind_orig.ml"  adtind.goal8.drop.
Success.
