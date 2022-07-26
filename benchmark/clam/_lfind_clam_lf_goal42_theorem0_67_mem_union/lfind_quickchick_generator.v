Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal42.

From lfind Require Import LFind.
Require Import Arith.
Lemma lfind_state  (x:natural) (n:natural) (y:lst) (z:lst) (H:@eq bool (eqb x n) true) (IHy:forall _ : @eq bool (lst_mem x y) true,
@eq bool (lst_mem x (lst_union y z)) true) (Heqb:@eq bool (lst_mem n z) true):@eq bool (lst_mem x (lst_union y z)) true.
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal42_theorem0_67_mem_union/".
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
Definition collect_data  (x:natural) (n:natural) (y:lst) (z:lst) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"++ "|" ++"n:" ++ "(" ++ show n ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"++ "|" ++"z:" ++ "(" ++ show z ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state lfind_v  n y z.
QuickChick collect_data.
Success.