Load LFindLoad.
From lfind Require Import LFind.
 
                    From adtind Require Import goal28.
 
 Require Import Extraction.
 Extract Inductive nat => nat [ "(O)" "S" ].
 Extract Inductive list => list [ "Nil" "Cons" ].

 
                    Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal28_qrevflat_append_74_append_nil/lfind_extraction.ml" .