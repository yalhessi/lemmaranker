Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal9.
 Lemma lfind_state  (x:natural) (y:natural) (w:natural) (z:lst):@eq lst (drop x (drop w (drop y z))) (drop y (drop x (drop w z))).
Admitted.