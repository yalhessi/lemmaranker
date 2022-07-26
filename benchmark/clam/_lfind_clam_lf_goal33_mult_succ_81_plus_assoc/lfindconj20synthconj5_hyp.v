Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj20synthconj5_hyp: forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (plus lv0 lv2) (mult lv2 (Succ lv1))) ->  (@eq natural (Succ (plus (plus lv0 lv1) lv2)) (mult (Succ lv1) (Succ lv2))).
Admitted.
QuickChick conj20synthconj5_hyp.
