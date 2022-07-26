Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal8.
 Lemma lfind_state  (x:natural) (y:natural):@eq lst (drop x (drop y Nil)) (drop y (drop x Nil)).
Admitted.