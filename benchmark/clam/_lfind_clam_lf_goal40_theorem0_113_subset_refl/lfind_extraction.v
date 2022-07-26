Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
 
                    From adtind Require Import goal40.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( true).
Definition lfind_example_2  := ( true).
Definition lfind_example_3  := ( true).
Definition lfind_example_4  := ( true).
Definition lfind_example_5  := ( true).
Definition lfind_example_6  := ( true).
Definition lfind_example_7  := ( true).
Definition lfind_example_8  := ( true).
Definition lfind_example_9  := ( true).
Definition lfind_example_10  := ( true).
Definition lfind_example_11  := ( true).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal40_theorem0_113_subset_refl/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 .