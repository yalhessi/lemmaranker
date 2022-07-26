Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal83.

From lfind Require Import LFind.
Lemma lfind_state  (y:lst):@eq lst y (append y Nil).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal83_theorem0_52_append_nil/".
QCInclude ".".
Extract Constant defNumTests => "50".
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