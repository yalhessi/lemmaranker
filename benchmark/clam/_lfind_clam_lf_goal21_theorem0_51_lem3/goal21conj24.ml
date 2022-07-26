type nat =
 | O
 | S of nat

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

let rec append (append_arg0:lst) (append_arg1:lst):lst=
  match append_arg0 with
  | Cons (x, y) -> Cons (x, (append y append_arg1))
  | Nil -> append_arg1
;;
let synth  (y : lst): lst-> lst|>
{

(  Cons ((Succ (Succ Zero)), (Cons (Zero, Nil)))) => (  Cons ((Succ (Succ Zero)), (Cons (Zero, Nil))));
(  Cons ((Succ (Succ Zero)), (Cons (Zero, (Cons ((Succ (Succ Zero)), (Cons    (Zero, Nil)))))))) => (  Cons ((Succ (Succ Zero)), (Cons (Zero, (Cons ((Succ (Succ Zero)), (Cons    (Zero, Nil))))))));
(  Cons ((Succ Zero), (Cons (Zero, Nil)))) => (  Cons ((Succ Zero), (Cons (Zero, Nil))));
(  Cons (Zero, (Cons ((Succ (Succ Zero)), (Cons (Zero, Nil)))))) => (  Cons (Zero, (Cons ((Succ (Succ Zero)), (Cons (Zero, Nil))))));
(  Cons ((Succ (Succ (Succ Zero))), Nil)) => (  Cons ((Succ (Succ (Succ Zero))), Nil));
(  Cons (Zero, (Cons (Zero, (Cons (Zero, (Cons ((Succ Zero), Nil)))))))) => (  Cons (Zero, (Cons (Zero, (Cons (Zero, (Cons ((Succ Zero), Nil))))))));
(  Cons (Zero, Nil)) => (  Cons (Zero, Nil));
(  Cons ((Succ Zero), Nil)) => (  Cons ((Succ Zero), Nil));
(  Cons ((Succ (Succ Zero)), Nil)) => (  Cons ((Succ (Succ Zero)), Nil));
(  Cons (Zero, (Cons ((Succ Zero), Nil)))) => (  Cons (Zero, (Cons ((Succ Zero), Nil))));
(  Nil) => (  Nil)
}=?