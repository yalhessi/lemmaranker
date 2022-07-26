Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal76.
 Lemma lfind_state  (n:natural) (x1:tree) (x2:tree) (y:lst):@eq lst (append (append (revflat x1) (Cons n (revflat x2))) y)
  (qrevaflat x1 (Cons n (qrevaflat x2 y))).
Admitted.