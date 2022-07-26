Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal50.
 Lemma lfind_state  (x:natural) (y:natural) (l:lst) (H:not (@eq natural x y)):@eq natural (if eqb x y then Succ (count l x) else count l x) (count l x).
Admitted.