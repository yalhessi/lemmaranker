Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal41.

From lfind Require Import LFind.
Require Import Arith.
Lemma lfind_state  (n:natural) (x:lst) (y:lst) (H:@eq bool (lst_subset (lst_intersection x y) x) true) (H1:@eq bool (lst_subset x (lst_intersection x y)) true) (H0:@eq bool (lst_mem n y) true) (IHx:forall _ : @eq bool (lst_subset x y) true,
@eq bool (lst_eq (lst_intersection x y) x) true):@eq bool (orb (eqb n n) (lst_mem n (lst_intersection x y))) true.
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal41_theorem0_105_Nat_beq_refl/".
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
Definition collect_data  (n:natural) (x:lst) (y:lst) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"
 in let lfind_v := print n lfind_var
 in lfind_state lfind_v  x y.
QuickChick collect_data.
Success.