Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
 
                    From adtind Require Import goal40.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( true).
Definition lfind_example_2  := ( false).
Definition lfind_example_3  := ( true).
Definition lfind_example_4  := ( false).
Definition lfind_example_5  := ( false).
Definition lfind_example_6  := ( false).
Definition lfind_example_7  := ( false).
Definition lfind_example_8  := ( true).
Definition lfind_example_9  := ( false).
Definition lfind_example_10  := ( true).
Definition lfind_example_11  := ( false).
Definition lfind_example_12  := ( true).
Definition lfind_example_13  := ( true).
Definition lfind_example_14  := ( false).
Definition lfind_example_15  := ( true).
Definition lfind_example_16  := ( false).
Definition lfind_example_17  := ( false).
Definition lfind_example_18  := ( false).
Definition lfind_example_19  := ( false).
Definition lfind_example_20  := ( false).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal40_subset_append_84_Nat_beq_refl/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 lfind_example_15 lfind_example_16 lfind_example_17 lfind_example_18 lfind_example_19 lfind_example_20 .