Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal70.
 Lemma lfind_state  (x:natural):@eq natural (if eqb x x then Succ Zero else Zero) (Succ Zero).
Admitted.