Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal78.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal78_theorem0_64_rev_rev/goal78_lfind_orig.ml"  adtind.goal78.append adtind.goal78.rev.
Success.