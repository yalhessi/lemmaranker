Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith. 
From adtind Require Import goal82.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (append (append y (Cons n Nil)) x) (append y (Cons n x)).
Admitted.