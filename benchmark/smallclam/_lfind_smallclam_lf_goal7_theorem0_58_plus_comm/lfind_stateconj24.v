Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal7.
 Lemma lfind_state  (n:natural) (x:lst):@eq natural (len (qreva x (Cons n Nil))) (Succ (plus (len x) Zero)).
Admitted.