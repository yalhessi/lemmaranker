Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal42.
 Lemma lfind_state  (x:natural) (n:natural) (y:lst) (z:lst) (H:@eq bool (eqb x n) true) (IHy:forall _ : @eq bool (lst_mem x y) true,
@eq bool (lst_mem x (lst_union y z)) true) (Heqb:@eq bool (lst_mem n z) true):@eq bool (lst_mem x (lst_union y z)) true.
Admitted.