Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal30.
 Lemma lfind_state  (n:natural) (l1:lst) (n0:natural) (l2:lst) (IHl2:@eq lst (rev (append (Cons n l1) l2)) (append (rev l2) (rev (Cons n l1)))):@eq lst (append (rev (append l1 (Cons n0 l2))) (Cons n Nil))
  (append (append (rev l2) (Cons n0 Nil)) (append (rev l1) (Cons n Nil))).
Admitted.