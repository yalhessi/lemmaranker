Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal24.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_2  := ( Succ Zero).
Definition lfind_example_3  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_4  := ( Succ (Succ Zero)).
Definition lfind_example_5  := ( Succ (Succ Zero)).
Definition lfind_example_6  := ( Succ Zero).
Definition lfind_example_7  := ( Succ (Succ Zero)).
Definition lfind_example_8  := ( Succ Zero).
Definition lfind_example_9  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_10  := ( Succ Zero).
Definition lfind_example_11  := ( Succ Zero).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal24_theorem0_45_lem/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 .