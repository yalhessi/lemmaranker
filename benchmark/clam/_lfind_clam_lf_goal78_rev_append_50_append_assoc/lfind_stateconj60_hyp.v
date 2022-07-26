Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal78.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst) (IHx:@eq lst (rev (append x y)) (append (rev y) (rev x))):@eq lst (append (append (rev y) (rev x)) (Cons n Nil))
  (append (rev y) (append (rev x) (Cons n Nil))).
Admitted.