Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal54.
 Lemma lfind_state  (w:natural) (x:natural) (y:natural) (z:lst):@eq lst (drop (Succ w) (drop x (Cons y z))) (drop w (drop x z)).
Admitted.