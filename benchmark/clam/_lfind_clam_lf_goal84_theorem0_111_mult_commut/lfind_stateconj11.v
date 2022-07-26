Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal84.
 Lemma lfind_state  (x:natural) (y:natural):@eq natural (mult (fac x) (mult x y)) (mult (fac x) (mult y x)).
Admitted.