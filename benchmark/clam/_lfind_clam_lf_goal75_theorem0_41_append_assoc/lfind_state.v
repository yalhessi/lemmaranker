Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal75.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (append (append (rev x) (Cons n Nil)) y) (qreva x (Cons n y)).
Admitted.