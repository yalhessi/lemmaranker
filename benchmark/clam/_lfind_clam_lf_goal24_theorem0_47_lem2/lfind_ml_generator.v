Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal24.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal24_theorem0_47_lem2/goal24_lfind_orig.ml"  adtind.goal24.plus adtind.goal24.even.
Success.
