Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal5.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal5_theorem0_47_lem2/lfind_extraction.ml" .