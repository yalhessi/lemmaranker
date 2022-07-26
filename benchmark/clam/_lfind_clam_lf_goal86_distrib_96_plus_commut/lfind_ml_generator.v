Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal86.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal86_distrib_96_plus_commut/goal86_lfind_orig.ml"  adtind.goal86.plus adtind.goal86.mult.
Success.
