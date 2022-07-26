Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal28.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal28_qrevflat_append_69_append_nil/goal28_lfind_orig.ml"  adtind.goal28.qrevaflat adtind.goal28.append adtind.goal28.revflat.
Success.
