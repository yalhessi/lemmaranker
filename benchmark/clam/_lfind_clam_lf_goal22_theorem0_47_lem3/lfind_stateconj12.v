Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal22.
 Lemma lfind_state  (y:lst):@eq bool (even (len y)) (even (len (append y Nil))).
Admitted.