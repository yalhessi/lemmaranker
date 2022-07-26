Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith. 
 
                    From adtind Require Import goal82.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Cons (Succ (Succ Zero)) (Cons (Succ (Succ Zero)) Nil)).
Definition lfind_example_2  := ( Cons (Succ (Succ (Succ Zero))) Nil).
Definition lfind_example_3  := ( Cons (Succ (Succ Zero))         (Cons (Succ Zero) (Cons (Succ (Succ Zero)) Nil))).
Definition lfind_example_4  := ( Cons (Succ Zero) Nil).
Definition lfind_example_5  := ( Cons (Succ Zero) (Cons Zero Nil)).
Definition lfind_example_6  := ( Cons Zero Nil).
Definition lfind_example_7  := ( Cons Zero (Cons Zero Nil)).
Definition lfind_example_8  := ( Nil).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal82_theorem0_71_qreva_rev/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 .