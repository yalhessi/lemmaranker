Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal38.
 Lemma lfind_state  (x:natural) (y:lst) (z:lst) (H:@eq bool (mem z x) true):@eq bool (mem (append y z) x) true.
Admitted.