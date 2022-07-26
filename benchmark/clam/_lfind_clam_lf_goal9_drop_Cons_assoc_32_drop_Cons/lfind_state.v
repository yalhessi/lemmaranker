Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal9.
 Lemma lfind_state  (x1:natural) (x2:natural) (x3:natural) (n:natural) (l:lst) (IHl:@eq lst (drop (Succ x1) (drop (Succ x2) (Cons x3 l)))
  (drop (Succ x2) (drop (Succ x1) (Cons x3 l)))):@eq lst (drop (Succ x1) (drop (Succ x2) (Cons x3 (Cons n l))))
  (drop (Succ x2) (drop (Succ x1) (Cons x3 (Cons n l)))).
Admitted.