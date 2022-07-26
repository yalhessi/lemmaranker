Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
 
                    From adtind Require Import goal50.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal50_count_insort_diff_158_eqb_diff/lfind_extraction.ml" .