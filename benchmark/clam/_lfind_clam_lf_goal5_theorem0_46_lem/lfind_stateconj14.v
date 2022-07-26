Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal5.
 Lemma lfind_state  (n:natural) (x:lst) (IHx:@eq natural (len (rev x)) (len x)):@eq natural (len (append (rev x) (Cons n Nil))) (Succ (len (rev x))).
Admitted.