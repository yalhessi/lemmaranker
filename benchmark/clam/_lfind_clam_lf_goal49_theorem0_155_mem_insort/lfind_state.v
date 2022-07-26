Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal49.
 Lemma lfind_state  (x:natural) (n:natural) (y:lst) (H:@eq bool (mem x (insort n (sort y))) true) (IHy:forall _ : @eq bool (mem x (sort y)) true, @eq bool (mem x y) true):@eq bool (orb (eqb x n) (mem x y)) true.
Admitted.