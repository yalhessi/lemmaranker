Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
 
                    From adtind Require Import goal46.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( true).
Definition lfind_example_2  := ( true).
Definition lfind_example_3  := ( true).
Definition lfind_example_4  := ( true).
Definition lfind_example_5  := ( true).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal46_theorem0_61_eqb_refl/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 .