Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal49.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal49_mem_insort_117_mem_cons/goal49_lfind_orig.ml"  adtind.goal49.insort adtind.goal49.mem.
Success.
