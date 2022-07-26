Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal5.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal5_theorem0_46_lem/goal5_lfind_orig.ml"  adtind.goal5.len adtind.goal5.rev adtind.goal5.append.
Success.
