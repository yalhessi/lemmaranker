Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
 
                    From adtind Require Import goal45.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( false).
Definition lfind_example_2  := ( false).
Definition lfind_example_3  := ( false).
Definition lfind_example_4  := ( false).
Definition lfind_example_5  := ( false).
Definition lfind_example_6  := ( true).
Definition lfind_example_7  := ( true).
Definition lfind_example_8  := ( true).
Definition lfind_example_9  := ( false).
Definition lfind_example_10  := ( false).
Definition lfind_example_11  := ( false).
Definition lfind_example_12  := ( false).
Definition lfind_example_13  := ( false).
Definition lfind_example_14  := ( true).
Definition lfind_example_15  := ( false).
Definition lfind_example_16  := ( true).
Definition lfind_example_17  := ( false).
Definition lfind_example_18  := ( true).
Definition lfind_example_19  := ( false).
Definition lfind_example_20  := ( false).
Definition lfind_example_21  := ( false).
Definition lfind_example_22  := ( false).
Definition lfind_example_23  := ( true).
Definition lfind_example_24  := ( false).
Definition lfind_example_25  := ( false).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal45_theorem0_61_Nat_beq_refl/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 lfind_example_15 lfind_example_16 lfind_example_17 lfind_example_18 lfind_example_19 lfind_example_20 lfind_example_21 lfind_example_22 lfind_example_23 lfind_example_24 lfind_example_25 .