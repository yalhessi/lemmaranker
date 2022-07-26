Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal85.

From lfind Require Import LFind.
Lemma lfind_state  (x:natural) (y:natural) (z:natural):@eq natural (plus (mult x y) (plus y z)) (plus (mult x y) (plus z y)).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal85_theorem0_66_plus_commut/".
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