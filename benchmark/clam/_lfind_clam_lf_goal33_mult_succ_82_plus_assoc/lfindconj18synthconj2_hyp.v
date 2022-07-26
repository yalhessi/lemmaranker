Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj18synthconj2_hyp: forall  (lv0 : natural) (lv1 : natural) (lv2 : natural) (lv3 : natural), (@eq natural (plus lv0 lv1) lv3) ->  (@eq natural (Succ (plus lv0 (plus lv1 lv2))) (plus lv3 (plus (Succ lv2) Zero))).
Admitted.
QuickChick conj18synthconj2_hyp.
