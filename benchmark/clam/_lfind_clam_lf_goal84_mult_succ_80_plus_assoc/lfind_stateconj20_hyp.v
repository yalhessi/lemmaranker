Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal84.
 Lemma lfind_state  (x:natural) (y:natural) (IHx:@eq natural (plus (mult x y) x) (mult x (Succ y))):@eq natural (Succ (plus (plus (mult x y) y) x))
  (plus (mult x (Succ y)) (Succ y)).
Admitted.