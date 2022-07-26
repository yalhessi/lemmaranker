Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal80.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal80_rev_rev_52_rev_append/goal80_lfind_orig.ml"  adtind.goal80.rev adtind.goal80.append.
Success.
