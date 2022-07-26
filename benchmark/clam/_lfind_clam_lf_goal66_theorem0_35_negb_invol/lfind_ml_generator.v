Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal66.

From lfind Require Import LFind.
Require Import Arith Bool.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal66_theorem0_35_negb_invol/goal66_lfind_orig.ml"  Coq.Init.Datatypes.negb adtind.goal66.even.
Success.
