Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal31.
 Lemma lfind_state  (n:natural) (x:lst) (IHx:@eq lst (qreva (qreva x Nil) Nil) x):@eq lst (qreva (qreva x (Cons n Nil)) Nil) (Cons n x).
Admitted.