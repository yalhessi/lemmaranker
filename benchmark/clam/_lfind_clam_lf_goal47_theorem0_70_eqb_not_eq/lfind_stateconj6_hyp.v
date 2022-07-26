Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal47.
 Lemma lfind_state  (x:natural) (y:natural) (H:not (@eq natural x y)):@eq bool (orb (eqb x y) false) false.
Admitted.