Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal79.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (rev (append (append (rev x) (Cons n Nil)) y))
  (append (rev y) (Cons n x)).
Admitted.