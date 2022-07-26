Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal4.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.

Lemma conj4synthconj1 : forall  (lv0 : natural) (lv1 : lst), (@eq natural (len (append (Cons lv0 lv1) lv1)) (Succ (len (append lv1 lv1)))).
Admitted.
QuickChick conj4synthconj1.
