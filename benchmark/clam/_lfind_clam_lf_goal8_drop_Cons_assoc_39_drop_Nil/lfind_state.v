Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal8.
 Lemma lfind_state  (x1:natural) (x2:natural) (x3:natural):@eq lst match drop x2 Nil with
        | Cons _ z => drop x1 z
        | Nil => Nil
        end match drop x1 Nil with
            | Cons _ z => drop x2 z
            | Nil => Nil
            end.
Admitted.