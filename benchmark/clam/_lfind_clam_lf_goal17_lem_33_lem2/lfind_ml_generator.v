Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal17.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal17_lem_33_lem2/goal17_lfind_orig.ml"  adtind.goal17.rev adtind.goal17.append.
Success.
