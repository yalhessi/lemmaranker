Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal45.
 Lemma lfind_state  (x:natural) (n:natural) (y:lst) (IHy:@eq bool (mem (insort y x) x) true):@eq bool (orb (eqb x x) (orb (eqb x n) (mem y x))) true.
Admitted.