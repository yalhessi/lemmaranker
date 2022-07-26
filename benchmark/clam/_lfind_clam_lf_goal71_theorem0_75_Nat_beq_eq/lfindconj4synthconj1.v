Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal71.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj4synthconj1 : forall , (@eq natural (Succ (Zero)) (Zero)).
Admitted.
QuickChick conj4synthconj1.
