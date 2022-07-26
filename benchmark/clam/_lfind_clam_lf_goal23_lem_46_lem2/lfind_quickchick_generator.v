Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal23.

From lfind Require Import LFind.
Lemma lfind_state  (n:natural) (l1:lst) (l2:lst):@eq natural (Succ (len (append l2 l1))) (len (append l2 (Cons n l1))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal23_lem_46_lem2/".
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
Definition collect_data  (n:natural) (l1:lst) (l2:lst) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"l1:" ++ "(" ++ show l1 ++ ")"++ "|" ++"l2:" ++ "(" ++ show l2 ++ ")"
 in let lfind_v := print n lfind_var
 in lfind_state lfind_v  l1 l2.
QuickChick collect_data.
Success.