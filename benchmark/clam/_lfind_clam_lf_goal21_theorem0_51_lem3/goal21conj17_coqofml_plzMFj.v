(** Generated by coq-of-ocaml *)
Require Import OCaml.OCaml.

Local Set Primitive Projections.
Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Open Scope type_scope.
Import ListNotations.

Unset Positivity Checking.
Unset Guard Checking.

Inductive nat : Set :=
| O : nat
| S : nat -> nat.

Inductive natural : Set :=
| Succ : natural -> natural
| Zero : natural.

Inductive lst : Set :=
| Cons : natural -> lst -> lst
| Nil : lst.

Fixpoint append (append_arg0 : lst) (append_arg1 : lst) {struct append_arg0}
  : lst :=
  match append_arg0 with
  | Cons x y => Cons x (append y append_arg1)
  | Nil => append_arg1
  end.

Definition synth (lf1 : lst) (y : lst) : lst := lf1.
