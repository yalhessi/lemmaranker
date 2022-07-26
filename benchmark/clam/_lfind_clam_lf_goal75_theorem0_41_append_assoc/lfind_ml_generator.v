Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal75.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal75_theorem0_41_append_assoc/goal75_lfind_orig.ml"  adtind.goal75.qreva adtind.goal75.append adtind.goal75.rev.
Success.
