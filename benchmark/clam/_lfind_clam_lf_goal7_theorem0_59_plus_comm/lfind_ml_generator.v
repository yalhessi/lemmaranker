Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal7.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal7_theorem0_59_plus_comm/goal7_lfind_orig.ml"  adtind.goal7.qreva adtind.goal7.plus adtind.goal7.len.
Success.
