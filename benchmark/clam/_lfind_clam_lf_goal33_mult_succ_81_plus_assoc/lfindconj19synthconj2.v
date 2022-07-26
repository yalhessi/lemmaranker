Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj19synthconj2 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural) (lv3 : natural), (@eq natural (Succ (plus (plus lv0 lv1) lv2)) (plus (mult lv2 (Succ lv1)) lv3)).
Admitted.
QuickChick conj19synthconj2.
