Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal49.
 Lemma lfind_state  (n:natural) (n0:natural) (l:lst) (IHl:forall _ : @eq bool (mem n0 (insort n l)) true,
or (@eq natural n0 n) (@eq bool (mem n0 l) true)):@eq bool (orb (eqb n0 n0) (mem n0 l)) true.
Admitted.