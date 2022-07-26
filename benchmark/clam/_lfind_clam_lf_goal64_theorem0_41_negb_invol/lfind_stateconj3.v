Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal64.
 Lemma lfind_state  (z:lst) (x:natural) (y:natural):@eq bool (even (len z)) (negb (negb (even (len z)))).
Admitted.