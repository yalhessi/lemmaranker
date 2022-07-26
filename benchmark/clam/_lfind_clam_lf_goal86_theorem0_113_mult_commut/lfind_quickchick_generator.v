Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal86.

From lfind Require Import LFind.
Lemma lfind_state  (x:natural) (y:natural) (z:natural):@eq natural (mult (exp x y) (mult x z)) (mult (exp x y) (mult z x)).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal86_theorem0_113_mult_commut/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : natural -> string -> natural.
Extract Constant print => "Extract.print".
Definition collect_data  (x:natural) (y:natural) (z:natural) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"++ "|" ++"z:" ++ "(" ++ show z ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state lfind_v  y z.
QuickChick collect_data.
Success.