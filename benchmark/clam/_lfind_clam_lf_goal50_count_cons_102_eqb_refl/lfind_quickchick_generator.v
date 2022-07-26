Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal50.

From lfind Require Import LFind.
Require Import Arith.
Lemma lfind_state  (x:natural) (l:lst):@eq natural (if eqb x x then Succ (count l x) else count l x)
  (Succ (count l x)).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal50_count_cons_102_eqb_refl/".
QCInclude ".".
Extract Constant defNumTests => "50".
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
Definition collect_data  (x:natural) (l:lst) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"++ "|" ++"l:" ++ "(" ++ show l ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state lfind_v  l.
QuickChick collect_data.
Success.