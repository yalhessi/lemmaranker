Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal11.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (rev (append (rev x) (Cons n (rev y)))) (append y (Cons n x)).
Admitted.