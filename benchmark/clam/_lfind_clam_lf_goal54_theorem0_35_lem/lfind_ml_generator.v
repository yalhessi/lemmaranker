Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal54.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal54_theorem0_35_lem/goal54_lfind_orig.ml"  adtind.goal54.drop.
Success.
