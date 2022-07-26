Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal31.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst) (IHx:@eq lst (qreva (append x y) Nil) (append (qreva y Nil) (qreva x Nil))):@eq lst (append (append (qreva y Nil) (qreva x Nil)) (Cons n Nil))
  (append (qreva y Nil) (qreva x (Cons n Nil))).
Admitted.