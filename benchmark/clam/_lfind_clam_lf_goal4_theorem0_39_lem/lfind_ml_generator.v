Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal4.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal4_theorem0_39_lem/goal4_lfind_orig.ml"  adtind.goal4.double adtind.goal4.len adtind.goal4.append.
Success.
