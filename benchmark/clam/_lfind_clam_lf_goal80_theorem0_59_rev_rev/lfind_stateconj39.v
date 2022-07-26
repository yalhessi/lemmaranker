Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal80.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (append (rev (rev y)) (append (Cons n Nil) x)) (append y (Cons n x)).
Admitted.