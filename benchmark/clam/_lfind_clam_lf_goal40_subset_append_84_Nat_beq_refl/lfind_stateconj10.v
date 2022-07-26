Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal40.
 Lemma lfind_state  (n:natural) (x:lst):@eq bool (orb (eqb n n) (lst_mem n x)) true.
Admitted.