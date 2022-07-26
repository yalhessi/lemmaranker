Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal70.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Succ Zero).
Definition lfind_example_2  := ( Zero).
Definition lfind_example_3  := ( Succ (Succ Zero)).
Definition lfind_example_4  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_5  := ( Succ (Succ Zero)).
Definition lfind_example_6  := ( Succ Zero).
Definition lfind_example_7  := ( Zero).
Definition lfind_example_8  := ( Zero).
Definition lfind_example_9  := ( Zero).
Definition lfind_example_10  := ( Zero).
Definition lfind_example_11  := ( Zero).
Definition lfind_example_12  := ( Zero).
Definition lfind_example_13  := ( Succ Zero).
Definition lfind_example_14  := ( Zero).
Definition lfind_example_15  := ( Succ Zero).
Definition lfind_example_16  := ( Zero).
Definition lfind_example_17  := ( Succ Zero).
Definition lfind_example_18  := ( Zero).
Definition lfind_example_19  := ( Zero).
Definition lfind_example_20  := ( Zero).
Definition lfind_example_21  := ( Zero).
Definition lfind_example_22  := ( Zero).
Definition lfind_example_23  := ( Succ Zero).
Definition lfind_example_24  := ( Zero).
Definition lfind_example_25  := ( Succ Zero).
Definition lfind_example_26  := ( Zero).
Definition lfind_example_27  := ( Zero).
Definition lfind_example_28  := ( Zero).
Definition lfind_example_29  := ( Zero).
Definition lfind_example_30  := ( Zero).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal70_theorem0_79_Nat_beq_eq/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 lfind_example_15 lfind_example_16 lfind_example_17 lfind_example_18 lfind_example_19 lfind_example_20 lfind_example_21 lfind_example_22 lfind_example_23 lfind_example_24 lfind_example_25 lfind_example_26 lfind_example_27 lfind_example_28 lfind_example_29 lfind_example_30 .