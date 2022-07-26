Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj27synthconj4 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural) (lv3 : natural), (@eq natural (Succ (plus (mult lv0 (plus Zero lv1)) (plus lv1 lv0))) (plus lv2 lv3)).
Admitted.
QuickChick conj27synthconj4.
