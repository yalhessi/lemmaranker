Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal29.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Cons Zero (Cons (Succ (Succ Zero)) (Cons Zero Nil))).
Definition lfind_example_2  := ( Cons (Succ (Succ Zero))         (Cons (Succ (Succ (Succ Zero))) (Cons Zero Nil))).
Definition lfind_example_3  := ( Cons (Succ (Succ Zero)) Nil).
Definition lfind_example_4  := ( Cons (Succ Zero) Nil).
Definition lfind_example_5  := ( Cons Zero Nil).
Definition lfind_example_6  := ( Cons Zero (Cons Zero Nil)).
Definition lfind_example_7  := ( Cons Zero (Cons (Succ (Succ Zero)) Nil)).
Definition lfind_example_8  := ( Cons (Succ Zero) (Cons (Succ (Succ (Succ Zero))) Nil)).
Definition lfind_example_9  := ( Nil).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal29_rev_qreva_nil_89_qreva_append/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 .