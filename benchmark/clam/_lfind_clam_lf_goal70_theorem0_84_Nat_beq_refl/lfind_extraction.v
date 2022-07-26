Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal70.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Succ Zero).
Definition lfind_example_2  := ( Succ Zero).
Definition lfind_example_3  := ( Succ Zero).
Definition lfind_example_4  := ( Succ Zero).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal70_theorem0_84_Nat_beq_refl/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 .