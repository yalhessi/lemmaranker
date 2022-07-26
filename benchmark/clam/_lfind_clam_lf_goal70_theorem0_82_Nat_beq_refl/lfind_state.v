Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal70.
 Lemma lfind_state  (x:natural) (n:natural) (y:lst) (IHy:@eq natural (count (insort y x) x) (Succ (count y x))) (Heqb:@eq bool (eqb x n) false) (Heqb0:@eq bool (less x n) true):@eq natural
  (if eqb x x
   then Succ (if eqb x n then Succ (count y x) else count y x)
   else if eqb x n then Succ (count y x) else count y x) 
  (Succ (count y x)).
Admitted.