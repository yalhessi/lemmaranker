Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal47.
 Lemma lfind_state  (x:natural) (y:natural) (n:natural) (z:lst) (H:not (@eq natural x y)) (IHz:@eq bool (mem (insort z y) x) (mem z x)):@eq bool (orb (eqb x y) (orb (eqb x n) (mem z x))) (orb (eqb x n) (mem z x)).
Admitted.