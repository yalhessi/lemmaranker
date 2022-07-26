Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal81.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (append (rev x) (Cons n y)) (append (append (rev x) (Cons n Nil)) y).
Admitted.