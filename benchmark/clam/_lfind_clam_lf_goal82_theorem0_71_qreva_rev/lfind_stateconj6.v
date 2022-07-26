Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith. 
From adtind Require Import goal82.
 Lemma lfind_state  (y:lst):@eq lst (qreva (rev y) Nil) (append y Nil).
Admitted.