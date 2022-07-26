Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal70.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal70_theorem0_82_Nat_beq_refl/lfind_extraction.ml" .