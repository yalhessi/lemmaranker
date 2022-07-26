Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal8.
 Lemma lfind_state  (x:natural) (y:natural) (n:natural) (z:lst) (IHz:@eq lst (drop x (drop y z)) (drop y (drop x z))):@eq lst (drop x (drop y (Cons n z))) (drop y (drop x (Cons n z))).
Admitted.