Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal33.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( @eq).
Definition lfind_example_2  := ( @eq).
Definition lfind_example_3  := ( @eq).
Definition lfind_example_4  := ( @eq).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal33_plus_commut_63_plus_zero/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 .