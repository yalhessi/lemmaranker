Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal45.
 Lemma lfind_state  (x:natural):@eq bool (orb (eqb x x) false) true.
Admitted.