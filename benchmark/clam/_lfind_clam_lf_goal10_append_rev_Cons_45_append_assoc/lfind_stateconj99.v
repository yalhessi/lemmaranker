Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal10.
 Lemma lfind_state  (n:natural) (l1:lst) (n0:natural) (l2:lst) (x:natural):@eq lst
  (append (append (append (rev l2) (Cons n0 Nil)) (Cons x (rev l1)))
     (Cons n Nil))
  (append (append (rev l2) (Cons n0 Nil))
     (Cons x (append (rev l1) (Cons n Nil)))).
Admitted.