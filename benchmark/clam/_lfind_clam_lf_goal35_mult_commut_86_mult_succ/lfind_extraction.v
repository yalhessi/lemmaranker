Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal35.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Succ (Succ (Succ (Succ Zero)))).
Definition lfind_example_2  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_3  := ( Succ Zero).
Definition lfind_example_4  := ( Succ Zero).
Definition lfind_example_5  := ( Succ (Succ (Succ (Succ Zero)))).
Definition lfind_example_6  := ( Succ (Succ Zero)).
Definition lfind_example_7  := ( Succ Zero).
Definition lfind_example_8  := ( Succ (Succ Zero)).
Definition lfind_example_9  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_10  := ( Succ Zero).
Definition lfind_example_11  := ( Succ (Succ Zero)).
Definition lfind_example_12  := ( Succ (Succ Zero)).
Definition lfind_example_13  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_14  := ( Succ Zero).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal35_mult_commut_86_mult_succ/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 .