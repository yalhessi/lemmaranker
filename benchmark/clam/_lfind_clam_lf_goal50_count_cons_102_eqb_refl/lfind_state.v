Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal50.
 Lemma lfind_state  (x:natural) (l:lst):@eq natural (if eqb x x then Succ (count l x) else count l x)
  (Succ (count l x)).
Admitted.