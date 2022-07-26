Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal38.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal38_theorem0_54_goal36/goal38_lfind_orig.ml"  adtind.goal38.mem adtind.goal38.append.
Success.
