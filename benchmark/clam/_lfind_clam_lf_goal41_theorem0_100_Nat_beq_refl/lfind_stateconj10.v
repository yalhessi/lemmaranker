Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal41.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst) (H:@eq bool (lst_subset (lst_intersection x y) x) true) (H1:@eq bool (lst_subset x (lst_intersection x y)) true) (H0:@eq bool (lst_mem n y) true) (IHx:forall _ : @eq bool (lst_subset x y) true,
@eq bool (lst_eq (lst_intersection x y) x) true):@eq bool (orb (eqb n n) (lst_mem n x)) true.
Admitted.