Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal60.
 Lemma lfind_state  (y:lst) (z:natural):@eq lst (rev (append y (Cons z Nil))) (Cons z (rev y)).
Admitted.