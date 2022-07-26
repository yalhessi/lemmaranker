Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal47.

From lfind Require Import LFind.
Require Import Arith.
Lemma lfind_state  (x:natural) (y:natural) (n:natural) (z:lst) (H:not (@eq natural x y)) (IHz:@eq bool (mem (insort z y) x) (mem z x)):@eq bool (orb (eqb x y) (orb (eqb x n) (mem z x))) (orb (eqb x n) (mem z x)).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal47_theorem0_66_eqb_not_eq/".
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
Definition collect_data  (x:natural) (y:natural) (n:natural) (z:lst) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"++ "|" ++"n:" ++ "(" ++ show n ++ ")"++ "|" ++"z:" ++ "(" ++ show z ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state lfind_v  y n z.
QuickChick collect_data.
Success.