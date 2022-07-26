Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.



Inductive natural : Type := Succ : natural -> natural |  Zero : natural.

Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint drop (drop_arg0 : natural) (drop_arg1 : lst) : lst
           := match drop_arg0, drop_arg1 with
              | x, Nil => Nil
              | Zero, x => x
              | Succ x, Cons y z => drop x z
              end.

Theorem drop_Nil: forall (x: natural), drop x Nil = Nil.
Proof.
  induction x ; simpl; reflexivity.
Qed.

Theorem drop_Cons: forall (x n: natural) (l: lst), drop (Succ x) (Cons n l) = drop x l.
  induction l; induction x; simpl; reflexivity.
Qed.

Theorem drop_Cons_assoc: forall (x1 x2 x3: natural) (l: lst),
    drop x1 (drop x2 (Cons x3 l)) = drop x2 (drop x1 (Cons x3 l)).
Proof.
  induction x1; induction x2; try (simpl; reflexivity).
  + induction l.
lfind.  rewrite <- IHx1. 
Admitted.

Theorem drop_assoc : forall (x : natural) (y : natural) (z : lst), eq (drop x (drop y z)) (drop y (drop x z)).
Proof.
  induction z.
  + rewrite 2 drop_Cons_assoc. reflexivity. 
  + rewrite 3 drop_Nil. reflexivity. 
Qed.

Theorem theorem0 : forall (x : natural) (y : natural) (w : natural) (z : lst), eq (drop w (drop x (drop y z))) (drop y (drop x (drop w z))).
Proof.
  intros.
  rewrite (drop_assoc w x).
  rewrite (drop_assoc w y).
  rewrite (drop_assoc x y).
  reflexivity.
Qed.