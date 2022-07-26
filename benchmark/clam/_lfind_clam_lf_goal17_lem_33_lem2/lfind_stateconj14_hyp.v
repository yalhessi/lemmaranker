Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal17.
 Lemma lfind_state  (n:natural) (l:lst) (IHl:@eq lst (rev (rev l)) l):@eq lst (rev (append (rev l) (Cons n Nil))) (Cons n l).
Admitted.