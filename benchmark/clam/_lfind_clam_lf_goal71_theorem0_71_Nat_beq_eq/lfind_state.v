Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal71.
 Lemma lfind_state  (x:natural) (y:natural) (n:natural) (z:lst) (H:not (@eq natural x y)) (IHz:@eq natural (count x (insort y z)) (count x z)) (Heqb:@eq bool (eqb x n) false) (Heqb0:@eq bool (less y n) true) (Heqb1:@eq bool (eqb x y) true):@eq natural (Succ (if eqb x n then Succ (count x z) else count x z))
  (count x z).
Admitted.