Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal49.
 Lemma lfind_state  (n:natural) (y:lst) (IHy:forall _ : @eq bool (mem n (sort y)) true, @eq bool (mem n y) true):@eq bool (orb (eqb n n) (mem n y)) true.
Admitted.