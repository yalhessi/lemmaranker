Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj24synthconj3 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (Succ (plus (plus (mult lv0 (plus lv1 Zero)) lv1) lv0)) (plus (mult lv0 lv2) lv2)).
Admitted.
QuickChick conj24synthconj3.
