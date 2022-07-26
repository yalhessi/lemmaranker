Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj23synthconj3_hyp: forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (plus (mult lv0 lv1) lv0) lv2) ->  (@eq natural (Succ (plus (plus (mult lv0 (plus lv1 Zero)) lv1) lv0)) (plus lv2 (Succ lv1))).
Admitted.
QuickChick conj23synthconj3_hyp.
