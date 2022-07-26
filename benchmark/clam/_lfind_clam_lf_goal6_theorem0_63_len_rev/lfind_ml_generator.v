Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal6.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal6_theorem0_63_len_rev/goal6_lfind_orig.ml"  adtind.goal6.plus adtind.goal6.len adtind.goal6.append adtind.goal6.rev.
Success.
