Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal13.
 Lemma lfind_state  (x:natural) (IHx:@eq natural (half (plus (Succ x) (Succ x))) (Succ x)):@eq natural (Succ (half (plus x (Succ (Succ x))))) (Succ (Succ x)).
Admitted.