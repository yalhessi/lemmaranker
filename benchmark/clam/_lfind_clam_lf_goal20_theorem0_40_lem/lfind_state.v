Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal20.
 Lemma lfind_state  (n:natural) (x:lst) (IHx:@eq bool (even (len (append x x))) true):@eq bool (negb (even (len (append x (Cons n x))))) true.
Admitted.