Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal77.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (append (append (rev y) (Cons n Nil)) x) (append (rev y) (Cons n x)).
Admitted.