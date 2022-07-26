Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal80.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (rev (append (append (rev x) (Cons n Nil)) (rev y)))
  (append y (Cons n x)).
Admitted.