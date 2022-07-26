Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal29.
 Lemma lfind_state  (n:natural) (x:lst):@eq lst (append (rev x) (Cons n Nil))
  (append (append (rev x) (Cons n Nil)) Nil).
Admitted.