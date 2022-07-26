Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal22.

From lfind Require Import LFind.
Lemma lfind_state  (y:lst):@eq bool (even (len y)) (even (len (append y Nil))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal22_theorem0_47_lem3/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for bool.

              Derive Arbitrary for bool.

              Instance Dec_Eq_bool : Dec_Eq bool.

              Proof. dec_eq. Qed.
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : lst -> string -> lst.
Extract Constant print => "Extract.print".
Definition collect_data  (y:lst) :=
 let lfind_var := "y:" ++ "(" ++ show y ++ ")"
 in let lfind_v := print y lfind_var
 in lfind_state lfind_v .
QuickChick collect_data.
Success.