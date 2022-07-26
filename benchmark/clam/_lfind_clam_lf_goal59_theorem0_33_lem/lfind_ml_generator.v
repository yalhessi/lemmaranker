Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal59.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal59_theorem0_33_lem/goal59_lfind_orig.ml"  adtind.goal59.rev adtind.goal59.append.
Success.
