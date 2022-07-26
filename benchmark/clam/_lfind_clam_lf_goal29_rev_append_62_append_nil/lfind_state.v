Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal29.
 Lemma lfind_state  (n:natural) (l1:lst):@eq lst (append (rev (append l1 Nil)) (Cons n Nil))
  (append (rev l1) (Cons n Nil)).
Admitted.