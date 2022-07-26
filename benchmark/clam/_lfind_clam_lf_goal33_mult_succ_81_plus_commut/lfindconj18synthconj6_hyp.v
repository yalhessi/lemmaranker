Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal33.

Lemma conj18synthconj6_hyp: forall  (lv0 : natural) (lv1 : natural) (lv2 : natural) (lv3 : natural), (@eq natural (plus lv0 lv2) lv3) ->  (@eq natural (Succ (plus lv0 (plus lv1 lv2))) (plus lv3 (Succ lv1))).
Admitted.
