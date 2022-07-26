Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal50.
 Lemma lfind_state  (n:natural) (y:lst) (IHy:@eq natural (count (sort y) n) (count y n)):@eq natural (count (insort (sort y) n) n) (Succ (count y n)).
Admitted.