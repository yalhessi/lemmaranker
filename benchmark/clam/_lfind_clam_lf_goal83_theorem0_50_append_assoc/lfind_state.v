Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal83.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (rotate (len x) (append (append x y) (Cons n Nil)))
  (append y (Cons n x)).
Admitted.