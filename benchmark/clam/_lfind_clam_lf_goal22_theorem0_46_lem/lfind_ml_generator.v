Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal22.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal22_theorem0_46_lem/goal22_lfind_orig.ml"  Coq.Init.Datatypes.negb adtind.goal22.len adtind.goal22.append adtind.goal22.even.
Success.
