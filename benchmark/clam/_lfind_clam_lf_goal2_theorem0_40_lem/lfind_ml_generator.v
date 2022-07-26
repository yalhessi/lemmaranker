Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal2.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal2_theorem0_40_lem/goal2_lfind_orig.ml"  adtind.goal2.append adtind.goal2.len.
Success.
