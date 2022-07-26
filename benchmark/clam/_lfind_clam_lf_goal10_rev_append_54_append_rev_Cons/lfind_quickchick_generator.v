Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal10.

From lfind Require Import LFind.
Lemma lfind_state  (n:natural) (l1:lst) (n0:natural) (l2:lst) (IHl2:@eq lst (rev (append (Cons n l1) l2)) (append (rev l2) (rev (Cons n l1)))):@eq lst (append (rev (append l1 (Cons n0 l2))) (Cons n Nil))
  (append (append (rev l2) (Cons n0 Nil)) (append (rev l1) (Cons n Nil))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal10_rev_append_54_append_rev_Cons/".
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
Definition collect_data  (n:natural) (l1:lst) (n0:natural) (l2:lst) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"l1:" ++ "(" ++ show l1 ++ ")"++ "|" ++"n0:" ++ "(" ++ show n0 ++ ")"++ "|" ++"l2:" ++ "(" ++ show l2 ++ ")"
 in let lfind_v := print n lfind_var
 in lfind_state lfind_v  l1 n0 l2.
QuickChick collect_data.
Success.