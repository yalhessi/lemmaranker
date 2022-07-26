Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal77.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal77_theorem0_46_append_nil/goal77_lfind_orig.ml"  adtind.goal77.append adtind.goal77.rev.
Success.
