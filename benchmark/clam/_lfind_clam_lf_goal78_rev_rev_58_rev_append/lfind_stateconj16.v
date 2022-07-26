Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal78.
 Lemma lfind_state  (n:natural) (x:lst) (IHx:@eq lst (rev (rev x)) x):@eq lst (rev (append (rev x) (Cons n Nil))) (Cons n x).
Admitted.