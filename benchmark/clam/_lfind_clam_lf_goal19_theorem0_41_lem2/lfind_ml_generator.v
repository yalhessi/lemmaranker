Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal19.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal19_theorem0_41_lem2/goal19_lfind_orig.ml"  adtind.goal19.rev adtind.goal19.append.
Success.
