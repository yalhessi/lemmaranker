Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal13.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal13_theorem0_36_lem/goal13_lfind_orig.ml"  adtind.goal13.plus adtind.goal13.half.
Success.
