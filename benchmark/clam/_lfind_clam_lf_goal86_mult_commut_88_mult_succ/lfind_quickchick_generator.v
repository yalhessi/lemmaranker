Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal86.

From lfind Require Import LFind.
Lemma lfind_state  (x:natural) (y:natural) (IHx:@eq natural (mult x y) (mult y x)):@eq natural (plus (mult y x) y) (mult y (Succ x)).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal86_mult_commut_88_mult_succ/".
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