Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal32.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal32_rotate_len_59_rotate_len_append/goal32_lfind_orig.ml"  adtind.goal32.rotate adtind.goal32.len adtind.goal32.append.
Success.
