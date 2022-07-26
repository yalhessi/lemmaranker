Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal2.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Cons (Succ (Succ Zero)) (Cons (Succ (Succ Zero)) Nil)).
Definition lfind_example_2  := ( Cons (Succ Zero)         (Cons (Succ (Succ Zero)) (Cons (Succ (Succ Zero)) Nil))).
Definition lfind_example_3  := ( Cons (Succ Zero)         (Cons (Succ (Succ (Succ Zero))) (Cons (Succ Zero) Nil))).
Definition lfind_example_4  := ( Cons (Succ (Succ (Succ Zero))) Nil).
Definition lfind_example_5  := ( Cons (Succ Zero)         (Cons (Succ (Succ (Succ (Succ Zero))))            (Cons Zero (Cons (Succ Zero) Nil)))).
Definition lfind_example_6  := ( Cons Zero (Cons Zero Nil)).
Definition lfind_example_7  := ( Cons Zero Nil).
Definition lfind_example_8  := ( Cons (Succ (Succ Zero)) Nil).
Definition lfind_example_9  := ( Cons (Succ Zero) Nil).
Definition lfind_example_10  := ( Nil).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal2_theorem0_41_lem2/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 .