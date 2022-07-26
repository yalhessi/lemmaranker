Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal50.
 Lemma lfind_state  (x:natural) (n:natural) (y:lst) (IHy:@eq natural (count (sort y) x) (count y x)) (E:@eq bool (eqb x n) false):@eq natural (count (insort (sort y) n) x) (count y x).
Admitted.