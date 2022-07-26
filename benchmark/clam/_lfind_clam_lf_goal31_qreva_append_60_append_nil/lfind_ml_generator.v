Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal31.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal31_qreva_append_60_append_nil/goal31_lfind_orig.ml"  adtind.goal31.append adtind.goal31.qreva.
Success.
