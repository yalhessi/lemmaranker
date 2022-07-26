Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal23.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal23_theorem0_52_lem/goal23_lfind_orig.ml"  adtind.goal23.len adtind.goal23.append.
Success.
