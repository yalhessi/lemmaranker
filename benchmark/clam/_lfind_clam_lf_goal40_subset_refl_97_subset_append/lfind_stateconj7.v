Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal40.
 Lemma lfind_state  (n:natural) (x:lst) (IHx:@eq bool (lst_subset x x) true):@eq bool (lst_subset x (append (Cons n Nil) x)) true.
Admitted.