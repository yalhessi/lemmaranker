Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal14.
 Lemma lfind_state  (n:natural) (x:lst) (IHx:@eq bool (sorted (sort x)) true):@eq bool (sorted (insort n (sort x))) true.
Admitted.