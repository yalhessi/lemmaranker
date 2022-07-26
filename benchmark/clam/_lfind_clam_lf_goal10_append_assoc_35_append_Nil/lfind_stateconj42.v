Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal10.
 Lemma lfind_state  (n:natural) (l1:lst) (n0:natural) (l2:lst):@eq lst (Cons n (append l1 (Cons n0 (append l2 Nil))))
  (Cons n (append (append l1 (Cons n0 l2)) Nil)).
Admitted.