Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal50.
 Lemma lfind_state  (x:natural):@eq natural (if eqb x x then Succ Zero else Zero) (Succ Zero).
Admitted.