Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal6.
 Lemma lfind_state  (x:lst) (y:lst):@eq natural (len (rev (append x y))) (plus (len x) (len y)).
Admitted.