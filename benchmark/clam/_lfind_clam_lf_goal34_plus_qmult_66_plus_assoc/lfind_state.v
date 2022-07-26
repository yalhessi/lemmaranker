Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal34.
 Lemma lfind_state  (x:natural) (y:natural) (z:natural) (a:natural):@eq natural (qmult x y (plus (plus z y) a)) (qmult x y (plus (plus z a) y)).
Admitted.