Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal69.
 Lemma lfind_state  (x:natural) (y:natural) (n:natural) (z:lst) (H:not (@eq natural x y)) (Heqb:@eq bool (less y n) true) (H0:@eq bool (eqb x y) true) (IHz:forall _ : @eq bool (mem x (insort y z)) true, @eq bool (mem x z) true):@eq bool (orb (eqb x n) (mem x z)) true.
Admitted.