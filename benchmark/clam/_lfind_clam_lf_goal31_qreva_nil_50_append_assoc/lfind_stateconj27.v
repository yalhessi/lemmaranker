Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal31.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (append (qreva x Nil) (Cons n y))
  (append (append (qreva x Nil) (Cons n Nil)) y).
Admitted.