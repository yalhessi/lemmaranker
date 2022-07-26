Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal20.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal20_theorem0_40_lem/goal20_lfind_orig.ml"  Coq.Init.Datatypes.negb adtind.goal20.len adtind.goal20.append adtind.goal20.even.
Success.
