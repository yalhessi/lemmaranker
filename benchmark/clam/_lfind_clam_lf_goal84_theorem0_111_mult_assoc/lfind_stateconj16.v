Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal84.
 Lemma lfind_state  (x:natural) (y:natural):@eq natural (mult (mult (fac x) x) y) (mult (fac x) (mult y x)).
Admitted.