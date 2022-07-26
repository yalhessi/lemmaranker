Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal78.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Cons (Succ (Succ Zero)) (Cons Zero Nil)).
Definition lfind_example_2  := ( Cons (Succ (Succ Zero)) Nil).
Definition lfind_example_3  := ( Cons Zero (Cons Zero (Cons Zero Nil))).
Definition lfind_example_4  := ( Cons Zero         (Cons Zero            (Cons Zero (Cons (Succ Zero) (Cons (Succ Zero) (Cons Zero Nil)))))).
Definition lfind_example_5  := ( Cons (Succ Zero) (Cons Zero Nil)).
Definition lfind_example_6  := ( Cons Zero (Cons Zero Nil)).
Definition lfind_example_7  := ( Cons (Succ (Succ (Succ (Succ Zero)))) Nil).
Definition lfind_example_8  := ( Cons Zero Nil).
Definition lfind_example_9  := ( Cons (Succ Zero) Nil).
Definition lfind_example_10  := ( Nil).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal78_theorem0_64_rev_rev/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 .