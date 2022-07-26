Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal11.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal11_theorem0_57_lem3/goal11_lfind_orig.ml"  adtind.goal11.append.
Success.
