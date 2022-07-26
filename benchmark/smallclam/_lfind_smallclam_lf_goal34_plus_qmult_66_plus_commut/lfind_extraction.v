Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal34.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Succ Zero).
Definition lfind_example_2  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_3  := ( Zero).
Definition lfind_example_4  := ( Succ (Succ Zero)).
Definition lfind_example_5  := ( Zero).
Definition lfind_example_6  := ( Zero).
Definition lfind_example_7  := ( Succ (Succ Zero)).
Definition lfind_example_8  := ( Succ (Succ Zero)).
Definition lfind_example_9  := ( Succ (Succ Zero)).
Definition lfind_example_10  := ( Succ (Succ (Succ (Succ (Succ Zero))))).
Definition lfind_example_11  := ( Succ Zero).
Definition lfind_example_12  := ( Succ (Succ Zero)).
Definition lfind_example_13  := ( Succ (Succ (Succ (Succ Zero)))).
Definition lfind_example_14  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_15  := ( Zero).
Definition lfind_example_16  := ( Succ (Succ Zero)).
Definition lfind_example_17  := ( Succ Zero).
Definition lfind_example_18  := ( Zero).
Definition lfind_example_19  := ( Succ (Succ (Succ (Succ (Succ Zero))))).
Definition lfind_example_20  := ( Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))).
Definition lfind_example_21  := ( Succ (Succ (Succ (Succ (Succ Zero))))).
Definition lfind_example_22  := ( Succ (Succ Zero)).
Definition lfind_example_23  := ( Zero).
Definition lfind_example_24  := ( Succ (Succ (Succ (Succ Zero)))).
Definition lfind_example_25  := ( Succ Zero).
Definition lfind_example_26  := ( Succ (Succ Zero)).
Definition lfind_example_27  := ( Succ (Succ Zero)).
Definition lfind_example_28  := ( Succ Zero).
Definition lfind_example_29  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_30  := ( Succ (Succ (Succ (Succ Zero)))).
Definition lfind_example_31  := ( Succ (Succ (Succ (Succ (Succ (Succ Zero)))))).
Definition lfind_example_32  := ( Zero).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_smallclam_lf_goal34_plus_qmult_66_plus_commut/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 lfind_example_15 lfind_example_16 lfind_example_17 lfind_example_18 lfind_example_19 lfind_example_20 lfind_example_21 lfind_example_22 lfind_example_23 lfind_example_24 lfind_example_25 lfind_example_26 lfind_example_27 lfind_example_28 lfind_example_29 lfind_example_30 lfind_example_31 lfind_example_32 .