Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal40.
 Lemma lfind_state  (y:lst) (H:@eq bool (lst_subset Nil y) true):@eq bool (lst_subset y y) true.
Admitted.