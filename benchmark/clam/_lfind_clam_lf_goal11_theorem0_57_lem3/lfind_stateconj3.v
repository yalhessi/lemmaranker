Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal11.
 Lemma lfind_state  (y:lst):@eq lst y (append y Nil).
Admitted.