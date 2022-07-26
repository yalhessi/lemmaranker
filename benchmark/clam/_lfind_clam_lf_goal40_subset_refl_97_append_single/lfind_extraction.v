Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
 
                    From adtind Require Import goal40.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( @eq).
Definition lfind_example_2  := ( @eq).
Definition lfind_example_3  := ( @eq).
Definition lfind_example_4  := ( @eq).
Definition lfind_example_5  := ( @eq).
Definition lfind_example_6  := ( @eq).
Definition lfind_example_7  := ( @eq).
Definition lfind_example_8  := ( @eq).
Definition lfind_example_9  := ( @eq).
Definition lfind_example_10  := ( @eq).
Definition lfind_example_11  := ( @eq).
Definition lfind_example_12  := ( @eq).
Definition lfind_example_13  := ( @eq).
Definition lfind_example_14  := ( @eq).
Definition lfind_example_15  := ( @eq).
Definition lfind_example_16  := ( @eq).
Definition lfind_example_17  := ( @eq).
Definition lfind_example_18  := ( @eq).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal40_subset_refl_97_append_single/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 lfind_example_15 lfind_example_16 lfind_example_17 lfind_example_18 .