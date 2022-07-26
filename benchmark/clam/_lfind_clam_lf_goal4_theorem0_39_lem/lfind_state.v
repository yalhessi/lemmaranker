Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal4.
 Lemma lfind_state  (n:natural) (x:lst) (IHx:@eq natural (len (append x x)) (double (len x))):@eq natural (len (append x (Cons n x))) (Succ (len (append x x))).
Admitted.