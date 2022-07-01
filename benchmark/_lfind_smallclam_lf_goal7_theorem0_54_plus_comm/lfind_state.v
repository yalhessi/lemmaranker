Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal7.
 Lemma lfind_state  (n:natural) (x:lst) (n0:natural) (y:lst) (IHy:@eq natural (len (qreva (Cons n x) y)) (plus (len (Cons n x)) (len y))):@eq natural (len (qreva x (Cons n (Cons n0 y))))
  (Succ (plus (len x) (Succ (len y)))).
Admitted.