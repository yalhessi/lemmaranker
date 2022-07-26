Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal49.

From lfind Require Import LFind.
Require Import Arith.
Lemma lfind_state  (x:natural) (n:natural) (y:lst) (H:@eq bool (mem x (insort n (sort y))) true) (IHy:forall _ : @eq bool (mem x (sort y)) true, @eq bool (mem x y) true):@eq bool (orb (eqb x n) (mem x y)) true.
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal49_theorem0_155_mem_insort/".
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
Definition collect_data  (x:natural) (n:natural) (y:lst) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"++ "|" ++"n:" ++ "(" ++ show n ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state lfind_v  n y.
QuickChick collect_data.
Success.