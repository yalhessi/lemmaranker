Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal60.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Cons (Succ Zero) Nil).
Definition lfind_example_2  := ( Cons (Succ (Succ (Succ Zero))) (Cons Zero (Cons Zero (Cons Zero Nil)))).
Definition lfind_example_3  := ( Cons Zero (Cons (Succ (Succ (Succ Zero))) Nil)).
Definition lfind_example_4  := ( Cons (Succ Zero) Nil).
Definition lfind_example_5  := ( Cons Zero (Cons (Succ (Succ (Succ Zero))) Nil)).
Definition lfind_example_6  := ( Cons Zero (Cons Zero Nil)).
Definition lfind_example_7  := ( Nil).
Definition lfind_example_8  := ( Nil).
Definition lfind_example_9  := ( Cons Zero         (Cons (Succ (Succ Zero))            (Cons (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))) Nil))).
Definition lfind_example_10  := ( Cons (Succ (Succ Zero)) Nil).
Definition lfind_example_11  := ( Cons (Succ (Succ (Succ Zero))) (Cons (Succ Zero) Nil)).
Definition lfind_example_12  := ( Cons (Succ Zero) Nil).
Definition lfind_example_13  := ( Cons (Succ Zero) (Cons (Succ (Succ Zero)) Nil)).
Definition lfind_example_14  := ( Cons (Succ Zero) (Cons (Succ Zero) Nil)).
Definition lfind_example_15  := ( Cons Zero Nil).
Definition lfind_example_16  := ( Nil).
Definition lfind_example_17  := ( Cons Zero (Cons (Succ (Succ Zero)) Nil)).
Definition lfind_example_18  := ( Nil).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal60_theorem0_34_lem/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 lfind_example_15 lfind_example_16 lfind_example_17 lfind_example_18 .