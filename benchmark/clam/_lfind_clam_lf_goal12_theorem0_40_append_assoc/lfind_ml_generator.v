Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal12.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal12_theorem0_40_append_assoc/goal12_lfind_orig.ml"  adtind.goal12.append adtind.goal12.rev adtind.goal12.qreva.
Success.
