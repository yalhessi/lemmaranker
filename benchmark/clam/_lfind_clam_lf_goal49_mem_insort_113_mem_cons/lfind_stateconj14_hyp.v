Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal49.
 Lemma lfind_state  (x:natural) (n:natural) (n0:natural) (l:lst) (H:@eq bool (mem x (Cons n (Cons n0 l))) true) (IHl:forall _ : @eq bool (mem x (insort n l)) true,
or (@eq natural x n) (@eq bool (mem x l) true)):or (@eq natural x n) (@eq bool (mem x (Cons n0 l)) true).
Admitted.