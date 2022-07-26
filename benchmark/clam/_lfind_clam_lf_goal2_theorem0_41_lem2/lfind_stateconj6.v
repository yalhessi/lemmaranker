Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal2.
 Lemma lfind_state  (y:lst):@eq natural (len y) (len (append y Nil)).
Admitted.