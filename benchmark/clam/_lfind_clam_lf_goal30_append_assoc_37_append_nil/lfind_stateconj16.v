Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal30.
 Lemma lfind_state  (n:natural) (l1:lst):@eq lst (Cons n (append l1 Nil)) (Cons n (append (append l1 Nil) Nil)).
Admitted.