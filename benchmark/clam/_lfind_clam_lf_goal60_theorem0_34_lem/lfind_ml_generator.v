Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal60.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal60_theorem0_34_lem/goal60_lfind_orig.ml"  adtind.goal60.rev adtind.goal60.append.
Success.
