Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal16.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal16_theorem0_33_lem/goal16_lfind_orig.ml"  Coq.Init.Datatypes.negb adtind.goal16.plus adtind.goal16.even.
Success.
