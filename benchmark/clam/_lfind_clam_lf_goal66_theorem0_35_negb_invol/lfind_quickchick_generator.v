Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal66.

From lfind Require Import LFind.
Require Import Arith Bool.
Lemma lfind_state  (y:natural):@eq bool (even y) (negb (negb (even y))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal66_theorem0_35_negb_invol/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for bool.

              Derive Arbitrary for bool.

              Instance Dec_Eq_bool : Dec_Eq bool.

              Proof. dec_eq. Qed.
Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : natural -> string -> natural.
Extract Constant print => "Extract.print".
Definition collect_data  (y:natural) :=
 let lfind_var := "y:" ++ "(" ++ show y ++ ")"
 in let lfind_v := print y lfind_var
 in lfind_state lfind_v .
QuickChick collect_data.
Success.