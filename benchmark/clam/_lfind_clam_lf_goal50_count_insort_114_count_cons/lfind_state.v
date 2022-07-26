Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal50.
 Lemma lfind_state  (x:natural) (n:natural) (l:lst) (IHl:@eq natural (count (insort l x) x) (Succ (count l x))):@eq natural (count (Cons x (Cons n l)) x)
  (Succ (if eqb x n then Succ (count l x) else count l x)).
Admitted.