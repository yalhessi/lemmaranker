Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal29.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal29_rev_qreva_nil_90_append_nil/goal29_lfind_orig.ml"  adtind.goal29.append adtind.goal29.rev.
Success.