Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal27.

From lfind Require Import LFind.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal27_append_assoc_42_append_nil/goal27_lfind_orig.ml"  adtind.goal27.append.
Success.
