Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal49.

From lfind Require Import LFind.
Require Import Arith.
Require Import Extraction.
Extract Inductive nat => nat [ "(O)" "S" ].
Extract Inductive list => list [ "Nil" "Cons" ].
Extraction "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal49_theorem0_158_eqb_refl/goal49_lfind_orig.ml"  adtind.goal49.sort Coq.Init.Datatypes.orb adtind.goal49.eqb adtind.goal49.mem.
Success.
