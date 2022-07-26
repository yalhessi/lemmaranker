Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal28.
 Lemma lfind_state  (n:natural) (x1:tree) (x2:tree):@eq lst (append (append (revflat x1) (Cons n (revflat x2))) Nil)
  (qrevaflat x1 (Cons n (qrevaflat x2 Nil))).
Admitted.