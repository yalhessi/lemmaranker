Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal34.

From lfind Require Import LFind.
Lemma lfind_state  (x:natural) (y:natural) (IHx:@eq natural (mult x y) (qmult x y Zero)):@eq natural (plus (qmult x y Zero) y) (qmult x y y).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal34_mult_eq_qmult_75_plus_qmult/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : natural -> string -> natural.
Extract Constant print => "Extract.print".
Definition collect_data  (x:natural) (y:natural) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state lfind_v  y.
QuickChick collect_data.
Success.