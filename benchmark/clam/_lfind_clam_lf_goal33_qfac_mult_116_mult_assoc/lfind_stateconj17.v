Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal33.
 Lemma lfind_state  (x:natural) (y:natural):@eq natural (mult (qfac x (Succ Zero)) (mult y x))
  (mult (mult (qfac x (Succ Zero)) x) y).
Admitted.