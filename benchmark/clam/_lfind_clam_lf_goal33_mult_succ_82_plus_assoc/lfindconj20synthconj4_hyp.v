Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj20synthconj4_hyp: forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (plus lv0 lv1) (mult lv1 (Succ lv2))) ->  (@eq natural (Succ (plus lv0 (plus lv1 lv2))) (plus (mult lv1 (plus (Succ Zero) lv2)) (plus (Succ Zero) lv2))).
Admitted.
QuickChick conj20synthconj4_hyp.
