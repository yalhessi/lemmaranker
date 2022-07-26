Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal6.
 Lemma lfind_state  (n:natural) (l:lst) (IHl:@eq natural (len (rev l)) (len l)):@eq natural (len (append (rev l) (Cons n Nil))) (Succ (len l)).
Admitted.