Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal10.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal10_rev_append_59_append_Nil/goal10_lfind_orig.ml"  adtind.goal10.append adtind.goal10.rev.
Success.
