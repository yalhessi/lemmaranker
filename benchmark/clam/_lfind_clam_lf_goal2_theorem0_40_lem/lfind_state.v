Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal2.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq natural (Succ (len (append y x))) (len (append y (Cons n x))).
Admitted.