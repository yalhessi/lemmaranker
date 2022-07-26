Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal46.
 Lemma lfind_state  (y:natural):@eq bool (orb (eqb y y) false) true.
Admitted.