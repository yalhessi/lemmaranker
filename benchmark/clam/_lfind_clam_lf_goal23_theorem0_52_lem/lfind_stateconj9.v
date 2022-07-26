Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal23.
 Lemma lfind_state  (x:lst) (y:lst):@eq natural (len (append x y)) (len (append y x)).
Admitted.