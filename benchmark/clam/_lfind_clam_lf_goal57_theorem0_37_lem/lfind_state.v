Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal57.
 Lemma lfind_state  (u:natural) (v:natural) (w:natural) (x:natural) (y:natural) (z:lst):@eq lst (drop u (drop v (drop (Succ (Succ w)) (Cons x (Cons y z)))))
  (drop (Succ u) (drop v (drop w (Cons x z)))).
Admitted.