Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal29.
 Lemma lfind_state  (n:natural) (l1:lst) (n0:natural) (l3:lst) (IHl3:@eq lst (append (Cons n l1) (append Nil l3))
  (append (append (Cons n l1) Nil) l3)):@eq lst (Cons n (append l1 (Cons n0 l3)))
  (Cons n (append (append l1 Nil) (Cons n0 l3))).
Admitted.