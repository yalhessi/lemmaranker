Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal12.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (qreva x (Cons n y)) (append (append (rev x) (Cons n Nil)) y).
Admitted.