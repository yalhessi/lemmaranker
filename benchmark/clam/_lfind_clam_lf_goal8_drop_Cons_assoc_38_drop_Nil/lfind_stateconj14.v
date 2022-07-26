Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal8.
 Lemma lfind_state  (x1:natural) (x2:natural) (x3:natural) (n:natural) (IHl:@eq lst (drop (Succ x1) (drop (Succ x2) (Cons x3 Nil)))
  (drop (Succ x2) (drop (Succ x1) (Cons x3 Nil)))):@eq lst (drop x2 (drop x1 Nil)) (drop x1 (drop x2 Nil)).
Admitted.