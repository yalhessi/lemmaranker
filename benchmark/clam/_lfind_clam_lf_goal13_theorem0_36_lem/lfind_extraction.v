Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal13.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_2  := ( Succ (Succ (Succ (Succ Zero)))).
Definition lfind_example_3  := ( Succ (Succ (Succ (Succ (Succ Zero))))).
Definition lfind_example_4  := ( Succ (Succ Zero)).
Definition lfind_example_5  := ( Succ Zero).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal13_theorem0_36_lem/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 .