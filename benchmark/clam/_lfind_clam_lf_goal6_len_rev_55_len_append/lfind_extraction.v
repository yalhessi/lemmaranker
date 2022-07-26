Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal6.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Succ (Succ Zero)).
Definition lfind_example_2  := ( Succ (Succ Zero)).
Definition lfind_example_3  := ( Zero).
Definition lfind_example_4  := ( Succ Zero).
Definition lfind_example_5  := ( Zero).
Definition lfind_example_6  := ( Succ (Succ Zero)).
Definition lfind_example_7  := ( Succ (Succ Zero)).
Definition lfind_example_8  := ( Succ Zero).
Definition lfind_example_9  := ( Zero).
Definition lfind_example_10  := ( Succ Zero).
Definition lfind_example_11  := ( Succ Zero).
Definition lfind_example_12  := ( Zero).
Definition lfind_example_13  := ( Succ (Succ Zero)).
Definition lfind_example_14  := ( Succ Zero).
Definition lfind_example_15  := ( Succ (Succ Zero)).
Definition lfind_example_16  := ( Succ (Succ (Succ (Succ Zero)))).
Definition lfind_example_17  := ( Succ (Succ (Succ (Succ (Succ Zero))))).
Definition lfind_example_18  := ( Zero).
Definition lfind_example_19  := ( Zero).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal6_len_rev_55_len_append/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 lfind_example_15 lfind_example_16 lfind_example_17 lfind_example_18 lfind_example_19 .