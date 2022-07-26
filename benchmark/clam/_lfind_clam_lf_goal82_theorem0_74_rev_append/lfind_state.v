Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith. 
From adtind Require Import goal82.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (qreva (qreva x (append (rev (Cons n Nil)) (rev y))) Nil)
  (append y (Cons n x)).
Admitted.