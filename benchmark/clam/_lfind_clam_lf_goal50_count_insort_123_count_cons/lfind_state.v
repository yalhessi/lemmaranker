Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal50.
 Lemma lfind_state  (x:natural) (n:natural) (l:lst) (IHl:@eq natural (count (insort l n) n) (Succ (count l n))) (E:@eq natural x n):@eq natural (count (Cons n (insort l n)) n) (Succ (Succ (count l n))).
Admitted.