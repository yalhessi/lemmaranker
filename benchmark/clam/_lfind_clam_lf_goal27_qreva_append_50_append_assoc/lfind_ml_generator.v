Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal27.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal27_qreva_append_50_append_assoc/goal27_lfind_orig.ml"  adtind.goal27.qreva adtind.goal27.append adtind.goal27.rev.
Success.
