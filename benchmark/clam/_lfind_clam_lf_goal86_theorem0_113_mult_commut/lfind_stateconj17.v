Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal86.
 Lemma lfind_state  (x:natural) (y:natural) (z:natural):@eq natural (mult (exp x y) (mult x z)) (mult (exp x y) (mult z x)).
Admitted.