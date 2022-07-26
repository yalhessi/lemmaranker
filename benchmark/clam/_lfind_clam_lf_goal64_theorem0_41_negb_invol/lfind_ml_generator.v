Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal64.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal64_theorem0_41_negb_invol/goal64_lfind_orig.ml"  Coq.Init.Datatypes.negb adtind.goal64.even adtind.goal64.len.
Success.
