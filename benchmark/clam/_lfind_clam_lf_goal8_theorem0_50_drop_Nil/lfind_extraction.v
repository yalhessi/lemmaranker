Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal8.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Nil).
Definition lfind_example_2  := ( Nil).
Definition lfind_example_3  := ( Nil).
Definition lfind_example_4  := ( Nil).
Definition lfind_example_5  := ( Nil).
Definition lfind_example_6  := ( Nil).
Definition lfind_example_7  := ( Nil).
Definition lfind_example_8  := ( Nil).
Definition lfind_example_9  := ( Nil).
Definition lfind_example_10  := ( Nil).
Definition lfind_example_11  := ( Nil).
Definition lfind_example_12  := ( Nil).
Definition lfind_example_13  := ( Nil).
Definition lfind_example_14  := ( Nil).
Definition lfind_example_15  := ( Nil).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal8_theorem0_50_drop_Nil/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 lfind_example_15 .