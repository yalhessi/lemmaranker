Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal78.
 Lemma lfind_state  (y:lst):@eq lst y (append y Nil).
Admitted.