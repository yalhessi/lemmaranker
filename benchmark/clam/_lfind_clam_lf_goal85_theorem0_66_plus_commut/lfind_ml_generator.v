Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal85.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal85_theorem0_66_plus_commut/goal85_lfind_orig.ml"  adtind.goal85.qmult adtind.goal85.plus adtind.goal85.mult.
Success.
