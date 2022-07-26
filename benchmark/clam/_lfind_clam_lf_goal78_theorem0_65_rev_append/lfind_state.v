Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal78.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (rev (qreva x (append (rev (Cons n Nil)) (rev y))))
  (append y (Cons n x)).
Admitted.