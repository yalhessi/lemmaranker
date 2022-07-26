Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj20synthconj1 : forall  (lv0 : natural) (lv1 : natural), (@eq natural (Succ (plus (plus (mult lv0 lv1) lv1) lv0)) (plus (mult lv0 (Succ lv1)) (Succ lv1))).
Admitted.
QuickChick conj20synthconj1.
