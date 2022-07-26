Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal8.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].
Definition lfind_example_1  := ( Succ Zero).
Definition lfind_example_2  := ( Succ Zero).
Definition lfind_example_3  := ( Succ Zero).
Definition lfind_example_4  := ( Succ (Succ Zero)).
Definition lfind_example_5  := ( Succ (Succ Zero)).
Definition lfind_example_6  := ( Succ Zero).
Definition lfind_example_7  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_8  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_9  := ( Succ Zero).
Definition lfind_example_10  := ( Succ Zero).
Definition lfind_example_11  := ( Succ (Succ Zero)).
Definition lfind_example_12  := ( Succ (Succ Zero)).
Definition lfind_example_13  := ( Succ Zero).
Definition lfind_example_14  := ( Succ Zero).
Definition lfind_example_15  := ( Succ Zero).
Definition lfind_example_16  := ( Succ (Succ Zero)).
Definition lfind_example_17  := ( Succ Zero).
Definition lfind_example_18  := ( Succ Zero).
Definition lfind_example_19  := ( Succ (Succ (Succ (Succ Zero)))).
Definition lfind_example_20  := ( Succ Zero).
Definition lfind_example_21  := ( Succ Zero).
Definition lfind_example_22  := ( Succ (Succ Zero)).
Definition lfind_example_23  := ( Succ Zero).
Definition lfind_example_24  := ( Succ (Succ Zero)).
Definition lfind_example_25  := ( Succ Zero).
Definition lfind_example_26  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_27  := ( Succ Zero).
Definition lfind_example_28  := ( Succ (Succ Zero)).
Definition lfind_example_29  := ( Succ Zero).
Definition lfind_example_30  := ( Succ (Succ Zero)).
Definition lfind_example_31  := ( Succ Zero).
Definition lfind_example_32  := ( Succ Zero).
Definition lfind_example_33  := ( Succ (Succ Zero)).
Definition lfind_example_34  := ( Succ (Succ Zero)).
Definition lfind_example_35  := ( Succ (Succ (Succ Zero))).
Definition lfind_example_36  := ( Succ Zero).
Definition lfind_example_37  := ( Succ Zero).
Definition lfind_example_38  := ( Succ (Succ Zero)).
Definition lfind_example_39  := ( Succ (Succ Zero)).
Definition lfind_example_40  := ( Succ Zero).

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal8_drop_Cons_assoc_34_drop_Cons/lfind_extraction.ml" lfind_example_1 lfind_example_2 lfind_example_3 lfind_example_4 lfind_example_5 lfind_example_6 lfind_example_7 lfind_example_8 lfind_example_9 lfind_example_10 lfind_example_11 lfind_example_12 lfind_example_13 lfind_example_14 lfind_example_15 lfind_example_16 lfind_example_17 lfind_example_18 lfind_example_19 lfind_example_20 lfind_example_21 lfind_example_22 lfind_example_23 lfind_example_24 lfind_example_25 lfind_example_26 lfind_example_27 lfind_example_28 lfind_example_29 lfind_example_30 lfind_example_31 lfind_example_32 lfind_example_33 lfind_example_34 lfind_example_35 lfind_example_36 lfind_example_37 lfind_example_38 lfind_example_39 lfind_example_40 .