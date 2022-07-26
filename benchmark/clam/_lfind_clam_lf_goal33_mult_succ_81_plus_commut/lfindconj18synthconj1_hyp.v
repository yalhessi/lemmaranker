Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj18synthconj1_hyp: forall  (lv0 : natural) (lv1 : natural) (lv2 : natural) (lv3 : natural), (@eq natural (plus lv0 lv2) lv3) ->  (@eq natural (Succ (plus lv0 (plus lv1 lv2))) (plus lv3 (Succ (plus Zero lv1)))).
Admitted.
QuickChick conj18synthconj1_hyp.
