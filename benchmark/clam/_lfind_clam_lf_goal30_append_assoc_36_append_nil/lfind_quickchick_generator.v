Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal30.

From lfind Require Import LFind.
Lemma lfind_state  (n:natural) (l1:lst) (n0:natural) (l3:lst) (IHl3:@eq lst (append (Cons n l1) (append Nil l3))
  (append (append (Cons n l1) Nil) l3)):@eq lst (Cons n (append l1 (Cons n0 l3)))
  (Cons n (append (append l1 Nil) (Cons n0 l3))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal30_append_assoc_36_append_nil/".
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
Definition collect_data  (n:natural) (l1:lst) (n0:natural) (l3:lst) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"l1:" ++ "(" ++ show l1 ++ ")"++ "|" ++"n0:" ++ "(" ++ show n0 ++ ")"++ "|" ++"l3:" ++ "(" ++ show l3 ++ ")"
 in let lfind_v := print n lfind_var
 in lfind_state lfind_v  l1 n0 l3.
QuickChick collect_data.
Success.