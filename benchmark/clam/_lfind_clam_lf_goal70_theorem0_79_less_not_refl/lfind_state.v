Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal70.
 Lemma lfind_state  (x:natural) (n:natural) (y:lst) (IHy:@eq natural (count (insort y x) x) (Succ (count y x))) (Heqb:@eq natural x n) (Heqb0:@eq bool (less n n) true):@eq natural (count (Cons x (Cons n y)) x) (Succ (Succ (count y x))).
Admitted.