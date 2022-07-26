Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal28.
 Lemma lfind_state  (n:natural) (x1:tree) (x2:tree) (n0:natural) (y:lst) (IHy:@eq lst (append (revflat (Node n x1 x2)) y) (qrevaflat (Node n x1 x2) y)):@eq lst (append (append (revflat x1) (Cons n (revflat x2))) (Cons n0 y))
  (append (revflat x1) (Cons n (qrevaflat x2 (Cons n0 y)))).
Admitted.