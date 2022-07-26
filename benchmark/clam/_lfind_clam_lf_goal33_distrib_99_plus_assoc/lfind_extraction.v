Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal33.
 
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
Definition lfind_example_19  := ( @eq).
Definition lfind_example_20  := ( @eq).
Definition lfind_example_21  := ( @eq).
Definition lfind_example_22  := ( @eq).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal33_distrib_99_plus_assoc/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 lfind_example_15 lfind_example_16 lfind_example_17 lfind_example_18 lfind_example_19 lfind_example_20 lfind_example_21 lfind_example_22 .