Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal46.
 Lemma lfind_state  (y:natural) (n:natural) (z:lst) (IHz:@eq bool (mem (insort z y) y) true):@eq bool (orb (eqb y y) (orb (eqb y n) (mem z y))) true.
Admitted.