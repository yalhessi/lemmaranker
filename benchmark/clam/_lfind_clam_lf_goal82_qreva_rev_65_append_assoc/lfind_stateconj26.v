Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith. 
From adtind Require Import goal82.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (append (rev x) (Cons n y)) (append (append (rev x) (Cons n Nil)) y).
Admitted.