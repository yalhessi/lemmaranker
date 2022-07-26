Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal41.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst) (z:lst) (H:@eq bool (lst_subset x (append z y)) true) (H0:@eq bool (lst_mem n y) true) (IHx:forall _ : @eq bool (lst_subset x y) true,
@eq bool (lst_subset x (append z y)) true):@eq bool (lst_mem n (append z y)) true.
Admitted.