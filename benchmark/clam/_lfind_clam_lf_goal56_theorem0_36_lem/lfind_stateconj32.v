Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal56.
 Lemma lfind_state  (v:natural) (w:natural) (x:natural) (y:natural) (z:lst):@eq lst (drop v (drop (Succ w) (drop x (Cons y z))))
  (drop v (drop w (drop x z))).
Admitted.