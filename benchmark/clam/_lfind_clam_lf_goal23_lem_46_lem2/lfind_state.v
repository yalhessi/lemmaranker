Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal23.
 Lemma lfind_state  (n:natural) (l1:lst) (l2:lst):@eq natural (Succ (len (append l2 l1))) (len (append l2 (Cons n l1))).
Admitted.