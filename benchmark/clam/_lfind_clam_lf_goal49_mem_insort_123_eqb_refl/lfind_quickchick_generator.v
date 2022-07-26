Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal49.

From lfind Require Import LFind.
Require Import Arith.
Lemma lfind_state  (n:natural) (n0:natural) (l:lst) (IHl:forall _ : @eq bool (mem n0 (insort n l)) true,
or (@eq natural n0 n) (@eq bool (mem n0 l) true)):@eq bool (orb (eqb n0 n0) (mem n0 l)) true.
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal49_mem_insort_123_eqb_refl/".
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
Definition collect_data  (n:natural) (n0:natural) (l:lst) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"n0:" ++ "(" ++ show n0 ++ ")"++ "|" ++"l:" ++ "(" ++ show l ++ ")"
 in let lfind_v := print n lfind_var
 in lfind_state lfind_v  n0 l.
QuickChick collect_data.
Success.