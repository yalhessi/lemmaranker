Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal31.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Cons Zero Nil).
Definition lfind_example_2  := ( Cons (Succ (Succ Zero)) Nil).
Definition lfind_example_3  := ( Cons Zero Nil).
Definition lfind_example_4  := ( Cons (Succ Zero) Nil).
Definition lfind_example_5  := ( Cons (Succ (Succ Zero)) Nil).
Definition lfind_example_6  := ( Cons Zero Nil).
Definition lfind_example_7  := ( Cons (Succ (Succ (Succ (Succ Zero)))) Nil).
Definition lfind_example_8  := ( Cons Zero Nil).
Definition lfind_example_9  := ( Cons (Succ (Succ (Succ Zero))) Nil).
Definition lfind_example_10  := ( Cons Zero Nil).
Definition lfind_example_11  := ( Cons (Succ (Succ (Succ (Succ Zero)))) Nil).
Definition lfind_example_12  := ( Cons Zero Nil).
Definition lfind_example_13  := ( Cons Zero Nil).
Definition lfind_example_14  := ( Cons Zero Nil).
Definition lfind_example_15  := ( Cons (Succ Zero) Nil).
Definition lfind_example_16  := ( Cons (Succ (Succ Zero)) Nil).
Definition lfind_example_17  := ( Cons (Succ Zero) Nil).
Definition lfind_example_18  := ( Cons (Succ (Succ Zero)) Nil).
Definition lfind_example_19  := ( Cons (Succ Zero) Nil).
Definition lfind_example_20  := ( Cons Zero Nil).
Definition lfind_example_21  := ( Cons Zero Nil).
Definition lfind_example_22  := ( Cons (Succ (Succ Zero)) Nil).
Definition lfind_example_23  := ( Cons Zero Nil).
Definition lfind_example_24  := ( Cons (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))) Nil).
Definition lfind_example_25  := ( Cons Zero Nil).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal31_qreva_nil_50_append_assoc/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 lfind_example_15 lfind_example_16 lfind_example_17 lfind_example_18 lfind_example_19 lfind_example_20 lfind_example_21 lfind_example_22 lfind_example_23 lfind_example_24 lfind_example_25 .