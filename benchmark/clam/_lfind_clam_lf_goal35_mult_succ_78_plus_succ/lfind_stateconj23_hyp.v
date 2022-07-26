Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal35.
 Lemma lfind_state  (x:natural) (y:natural) (IHx:@eq natural (plus (mult x y) x) (mult x (Succ y))):@eq natural (plus (plus (mult x y) y) (Succ x))
  (plus (mult x (Succ y)) (Succ y)).
Admitted.