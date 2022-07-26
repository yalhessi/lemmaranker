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

Inductive bool : Set :=
| True : bool
| False : bool.

Inductive natural : Set :=
| Succ : natural -> natural
| Zero : natural.

Fixpoint eqb (n : natural) (m : natural) {struct n} : bool :=
  match n with
  | Succ n' =>
    match m with
    | Succ m' => eqb n' m'
    | Zero => False
    end
  | Zero =>
    match m with
    | Succ _ => False
    | Zero => True
    end
  end.

Definition synth : natural := Succ Zero.