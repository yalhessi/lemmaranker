Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith Bool.
 
                    From adtind Require Import goal66.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( true).
Definition lfind_example_2  := ( true).
Definition lfind_example_3  := ( false).
Definition lfind_example_4  := ( true).
Definition lfind_example_5  := ( false).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal66_theorem0_35_negb_invol/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 .