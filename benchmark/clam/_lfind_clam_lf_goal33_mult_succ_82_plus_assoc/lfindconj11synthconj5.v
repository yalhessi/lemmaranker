Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj11synthconj5 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (Succ (plus lv0 lv1)) (plus Zero lv2)).
Admitted.
QuickChick conj11synthconj5.