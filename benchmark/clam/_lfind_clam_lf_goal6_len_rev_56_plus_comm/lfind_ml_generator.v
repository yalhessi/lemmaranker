Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal6.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal6_len_rev_56_plus_comm/goal6_lfind_orig.ml"  adtind.goal6.plus adtind.goal6.rev adtind.goal6.len.
Success.
