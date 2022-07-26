Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal46.

From lfind Require Import LFind.
Require Import Arith.
Lemma lfind_state  (y:natural) (n:natural) (z:lst) (IHz:@eq bool (mem (insort z y) y) true):@eq bool (orb (eqb y y) (orb (eqb y n) (mem z y))) true.
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal46_theorem0_58_eqb_refl/".
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
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : natural -> string -> natural.
Extract Constant print => "Extract.print".
Definition collect_data  (y:natural) (n:natural) (z:lst) :=
 let lfind_var := "y:" ++ "(" ++ show y ++ ")"++ "|" ++"n:" ++ "(" ++ show n ++ ")"++ "|" ++"z:" ++ "(" ++ show z ++ ")"
 in let lfind_v := print y lfind_var
 in lfind_state lfind_v  n z.
QuickChick collect_data.
Success.