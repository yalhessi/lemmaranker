Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal7.
 Lemma lfind_state  (n:natural) (x:lst):@eq natural (plus (len x) (len (Cons n Nil))) (Succ (len x)).
Admitted.