Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal22.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq bool (negb (even (len (append x y)))) (even (len (append y (Cons n x)))).
Admitted.