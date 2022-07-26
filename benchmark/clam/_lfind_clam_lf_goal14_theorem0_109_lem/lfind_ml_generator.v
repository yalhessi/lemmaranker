Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal14.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal14_theorem0_109_lem/goal14_lfind_orig.ml"  adtind.goal14.sorted adtind.goal14.sort adtind.goal14.insort.
Success.
