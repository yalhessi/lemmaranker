Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj28synthconj5_hyp: forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (plus (mult lv0 lv1) lv0) lv2) ->  (@eq natural (Succ (plus (mult lv0 lv1) (plus lv0 lv1))) (plus lv2 (plus Zero (Succ lv1)))).
Admitted.
QuickChick conj28synthconj5_hyp.
