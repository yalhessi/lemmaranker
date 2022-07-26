Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj20synthconj2 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (Succ (plus lv0 (plus lv1 lv2))) (plus (mult lv2 (plus (Succ lv1) Zero)) (plus (Succ lv1) Zero))).
Admitted.
QuickChick conj20synthconj2.
