Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal81.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal81_theorem0_48_append_assoc/goal81_lfind_orig.ml"  adtind.goal81.qreva adtind.goal81.append adtind.goal81.rev.
Success.
