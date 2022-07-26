Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal30.

From lfind Require Import LFind.
Lemma lfind_state  (n:natural) (l1:lst) (n0:natural) (l2:lst) (x:natural):@eq lst
  (append (append (append (rev l2) (Cons n0 Nil)) (Cons x (rev l1)))
     (Cons n Nil))
  (append (append (rev l2) (Cons n0 Nil))
     (Cons x (append (rev l1) (Cons n Nil)))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal30_append_rev_cons_45_append_assoc/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.
Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : natural -> string -> natural.
Extract Constant print => "Extract.print".
Definition collect_data  (n:natural) (l1:lst) (n0:natural) (l2:lst) (x:natural) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"l1:" ++ "(" ++ show l1 ++ ")"++ "|" ++"n0:" ++ "(" ++ show n0 ++ ")"++ "|" ++"l2:" ++ "(" ++ show l2 ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")"
 in let lfind_v := print n lfind_var
 in lfind_state lfind_v  l1 n0 l2 x.
QuickChick collect_data.
Success.