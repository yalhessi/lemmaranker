Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
 
                    From adtind Require Import goal49.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( false).
Definition lfind_example_2  := ( false).
Definition lfind_example_3  := ( false).
Definition lfind_example_4  := ( false).
Definition lfind_example_5  := ( false).
Definition lfind_example_6  := ( false).
Definition lfind_example_7  := ( true).
Definition lfind_example_8  := ( false).
Definition lfind_example_9  := ( false).
Definition lfind_example_10  := ( false).
Definition lfind_example_11  := ( true).
Definition lfind_example_12  := ( true).
Definition lfind_example_13  := ( true).
Definition lfind_example_14  := ( false).
Definition lfind_example_15  := ( false).
Definition lfind_example_16  := ( false).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal49_theorem0_158_eqb_refl/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 lfind_example_15 lfind_example_16 .