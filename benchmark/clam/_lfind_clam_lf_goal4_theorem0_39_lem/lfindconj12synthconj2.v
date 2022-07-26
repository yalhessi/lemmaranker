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

Lemma conj12synthconj2 : forall  (lv0 : lst) (lv1 : lst), (@eq natural (len (append lv0 lv1)) (Succ (len (append (append Nil lv0) lv0)))).
Admitted.
QuickChick conj12synthconj2.
