Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal9.

From lfind Require Import LFind.
Lemma lfind_state  (x1:natural) (x2:natural) (x3:natural):@eq lst match drop x2 Nil with
        | Cons _ z => drop x1 z
        | Nil => Nil
        end match drop x1 Nil with
            | Cons _ z => drop x2 z
            | Nil => Nil
            end.
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal9_drop_Cons_assoc_37_drop_Nil/".
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
Definition collect_data  (x1:natural) (x2:natural) (x3:natural) :=
 let lfind_var := "x1:" ++ "(" ++ show x1 ++ ")"++ "|" ++"x2:" ++ "(" ++ show x2 ++ ")"++ "|" ++"x3:" ++ "(" ++ show x3 ++ ")"
 in let lfind_v := print x1 lfind_var
 in lfind_state lfind_v  x2 x3.
QuickChick collect_data.
Success.