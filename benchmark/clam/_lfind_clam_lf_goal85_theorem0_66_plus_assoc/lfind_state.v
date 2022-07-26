Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal85.
 Lemma lfind_state  (x:natural) (y:natural) (z:natural):@eq natural (plus (plus (mult x y) y) z) (plus (mult x y) (plus z y)).
Admitted.