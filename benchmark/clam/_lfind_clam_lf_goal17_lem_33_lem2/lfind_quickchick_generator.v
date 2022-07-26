Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal17.

From lfind Require Import LFind.
Lemma lfind_state  (n:natural) (l:lst) (IHl:@eq lst (rev (rev l)) l):@eq lst (rev (append (rev l) (Cons n Nil))) (Cons n l).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal17_lem_33_lem2/".
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
Definition collect_data  (n:natural) (l:lst) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"l:" ++ "(" ++ show l ++ ")"
 in let lfind_v := print n lfind_var
 in lfind_state lfind_v  l.
QuickChick collect_data.
Success.