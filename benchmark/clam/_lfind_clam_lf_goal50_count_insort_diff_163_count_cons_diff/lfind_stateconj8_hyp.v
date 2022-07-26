Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal50.
 Lemma lfind_state  (x:natural) (y:natural) (n:natural) (l:lst) (H:not (@eq natural x y)) (IHl:@eq natural (count (insort l y) x) (count l x)) (El:@eq bool (less y n) true) (Ee:@eq bool (eqb x n) false):@eq natural (count (Cons y (Cons n l)) x) (count l x).
Admitted.