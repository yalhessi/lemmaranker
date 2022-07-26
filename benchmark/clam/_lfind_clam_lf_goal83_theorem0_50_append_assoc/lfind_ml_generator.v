Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal83.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal83_theorem0_50_append_assoc/goal83_lfind_orig.ml"  adtind.goal83.rotate adtind.goal83.len adtind.goal83.append.
Success.
