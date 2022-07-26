Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal82.

From lfind Require Import LFind.
Require Import Arith. 
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal82_rev_rev_58_rev_append/goal82_lfind_orig.ml"  adtind.goal82.rev adtind.goal82.append.
Success.
