Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj29synthconj1_hyp: forall  (lv0 : natural) (lv1 : natural) (lv2 : natural) (lv3 : natural), (@eq natural (plus (mult lv1 lv0) lv1) (mult lv1 lv3)) ->  (@eq natural (plus (plus (plus Zero (mult lv0 lv1)) lv0) lv2) (plus (mult lv1 lv3) lv3)).
Admitted.
QuickChick conj29synthconj1_hyp.
