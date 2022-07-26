Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal32.
 Lemma lfind_state  (n:natural) (x:lst) (IHx:@eq lst (rotate (len x) x) x):@eq lst (rotate (len x) (append x (Cons n Nil))) (Cons n x).
Admitted.