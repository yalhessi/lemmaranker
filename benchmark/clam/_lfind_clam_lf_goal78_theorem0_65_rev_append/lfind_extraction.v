Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal78.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Cons (Succ Zero)         (Cons (Succ (Succ (Succ Zero))) (Cons (Succ Zero) (Cons Zero Nil)))).
Definition lfind_example_2  := ( Cons Zero (Cons (Succ Zero) Nil)).
Definition lfind_example_3  := ( Cons (Succ (Succ (Succ (Succ (Succ Zero))))) Nil).
Definition lfind_example_4  := ( Cons Zero (Cons Zero (Cons Zero Nil))).
Definition lfind_example_5  := ( Cons (Succ Zero) Nil).
Definition lfind_example_6  := ( Cons Zero Nil).
Definition lfind_example_7  := ( Cons (Succ Zero)         (Cons (Succ Zero) (Cons (Succ Zero) (Cons (Succ Zero) Nil)))).
Definition lfind_example_8  := ( Cons (Succ Zero) Nil).
Definition lfind_example_9  := ( Cons Zero (Cons (Succ (Succ Zero)) Nil)).
Definition lfind_example_10  := ( Cons (Succ (Succ (Succ Zero)))         (Cons Zero (Cons (Succ Zero) (Cons Zero Nil)))).
Definition lfind_example_11  := ( Cons Zero Nil).
Definition lfind_example_12  := ( Cons (Succ Zero) Nil).
Definition lfind_example_13  := ( Cons Zero Nil).
Definition lfind_example_14  := ( Cons Zero Nil).
Definition lfind_example_15  := ( Cons (Succ (Succ Zero))         (Cons (Succ Zero)            (Cons Zero (Cons Zero (Cons (Succ (Succ (Succ Zero))) Nil))))).
Definition lfind_example_16  := ( Cons Zero Nil).
Definition lfind_example_17  := ( Cons (Succ Zero) (Cons Zero Nil)).
Definition lfind_example_18  := ( Cons (Succ (Succ (Succ Zero))) Nil).
Definition lfind_example_19  := ( Cons (Succ Zero) Nil).
Definition lfind_example_20  := ( Cons (Succ Zero) Nil).
Definition lfind_example_21  := ( Cons (Succ (Succ Zero)) (Cons (Succ Zero) Nil)).
Definition lfind_example_22  := ( Cons (Succ Zero) (Cons (Succ Zero) Nil)).
Definition lfind_example_23  := ( Cons (Succ (Succ Zero)) Nil).
Definition lfind_example_24  := ( Cons Zero (Cons Zero Nil)).
Definition lfind_example_25  := ( Cons Zero (Cons (Succ Zero) (Cons (Succ Zero) Nil))).
Definition lfind_example_26  := ( Cons Zero Nil).
Definition lfind_example_27  := ( Cons Zero Nil).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal78_theorem0_65_rev_append/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 lfind_example_15 lfind_example_16 lfind_example_17 lfind_example_18 lfind_example_19 lfind_example_20 lfind_example_21 lfind_example_22 lfind_example_23 lfind_example_24 lfind_example_25 lfind_example_26 lfind_example_27 .