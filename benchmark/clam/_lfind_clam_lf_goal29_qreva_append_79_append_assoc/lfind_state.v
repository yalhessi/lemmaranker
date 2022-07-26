Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal29.
 Lemma lfind_state  (n:natural) (x:lst) (n0:natural) (y:lst) (IHy:@eq lst (qreva (Cons n x) y) (append (rev (Cons n x)) y)):@eq lst (append (rev x) (Cons n (Cons n0 y)))
  (append (append (rev x) (Cons n Nil)) (Cons n0 y)).
Admitted.