Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal33.
 Lemma lfind_state  (x:natural) (IHx:@eq natural (fac x) (qfac x (Succ Zero))):@eq natural (mult (fac x) x) (qfac x x).
Admitted.