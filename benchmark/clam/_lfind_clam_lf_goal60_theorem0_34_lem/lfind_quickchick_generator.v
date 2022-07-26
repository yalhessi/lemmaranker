Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal60.

From lfind Require Import LFind.
Lemma lfind_state  (y:lst) (z:natural):@eq lst (rev (append y (Cons z Nil))) (Cons z (rev y)).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal60_theorem0_34_lem/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.
Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : lst -> string -> lst.
Extract Constant print => "Extract.print".
Definition collect_data  (y:lst) (z:natural) :=
 let lfind_var := "y:" ++ "(" ++ show y ++ ")"++ "|" ++"z:" ++ "(" ++ show z ++ ")"
 in let lfind_v := print y lfind_var
 in lfind_state lfind_v  z.
QuickChick collect_data.
Success.