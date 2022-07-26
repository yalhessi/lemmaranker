Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal10.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Nil).
Definition lfind_example_2  := ( Nil).
Definition lfind_example_3  := ( Nil).
Definition lfind_example_4  := ( Nil).
Definition lfind_example_5  := ( Cons (Succ Zero) Nil).
Definition lfind_example_6  := ( Cons (Succ Zero) Nil).
Definition lfind_example_7  := ( Nil).
Definition lfind_example_8  := ( Cons Zero Nil).
Definition lfind_example_9  := ( Cons Zero Nil).
Definition lfind_example_10  := ( Nil).
Definition lfind_example_11  := ( Nil).
Definition lfind_example_12  := ( Cons (Succ (Succ Zero)) (Cons (Succ Zero) Nil)).
Definition lfind_example_13  := ( Cons (Succ (Succ Zero)) (Cons Zero Nil)).
Definition lfind_example_14  := ( Cons (Succ (Succ (Succ Zero))) Nil).
Definition lfind_example_15  := ( Nil).
Definition lfind_example_16  := ( Cons Zero (Cons (Succ Zero) Nil)).
Definition lfind_example_17  := ( Cons (Succ Zero) (Cons (Succ Zero) Nil)).
Definition lfind_example_18  := ( Nil).
Definition lfind_example_19  := ( Cons Zero Nil).
Definition lfind_example_20  := ( Cons (Succ (Succ (Succ Zero))) (Cons Zero Nil)).
Definition lfind_example_21  := ( Nil).
Definition lfind_example_22  := ( Cons Zero (Cons Zero Nil)).
Definition lfind_example_23  := ( Nil).
Definition lfind_example_24  := ( Nil).
Definition lfind_example_25  := ( Cons Zero Nil).
Definition lfind_example_26  := ( Nil).
Definition lfind_example_27  := ( Cons Zero (Cons Zero Nil)).
Definition lfind_example_28  := ( Cons Zero Nil).
Definition lfind_example_29  := ( Cons Zero (Cons Zero Nil)).
Definition lfind_example_30  := ( Nil).
Definition lfind_example_31  := ( Nil).
Definition lfind_example_32  := ( Nil).
Definition lfind_example_33  := ( Cons Zero Nil).
Definition lfind_example_34  := ( Nil).
Definition lfind_example_35  := ( Cons (Succ Zero) (Cons (Succ (Succ Zero)) (Cons Zero (Cons Zero Nil)))).
Definition lfind_example_36  := ( Nil).
Definition lfind_example_37  := ( Nil).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal10_rev_append_54_append_rev_Cons/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 lfind_example_15 lfind_example_16 lfind_example_17 lfind_example_18 lfind_example_19 lfind_example_20 lfind_example_21 lfind_example_22 lfind_example_23 lfind_example_24 lfind_example_25 lfind_example_26 lfind_example_27 lfind_example_28 lfind_example_29 lfind_example_30 lfind_example_31 lfind_example_32 lfind_example_33 lfind_example_34 lfind_example_35 lfind_example_36 lfind_example_37 .