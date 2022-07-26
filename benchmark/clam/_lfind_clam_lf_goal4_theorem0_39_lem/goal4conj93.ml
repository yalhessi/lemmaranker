type nat =
 | O
 | S of nat

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

let rec double (n:natural):natural=
 match n with
| Succ n -> Succ (Succ (double n))
| Zero -> Zero

;;
let rec append (append_arg0:lst) (append_arg1:lst):lst=
  match append_arg0 with
  | Cons (x, y) -> Cons (x, (append y append_arg1))
  | Nil -> append_arg1

;;
let rec len (n:lst):natural=
 match n with
| Cons (_, y) -> Succ (len y)
| Nil -> Zero
;;
let synth  (lf1 : natural) (lf2 : lst) (x : lst): natural-> lst-> lst-> natural|>
{

(  Succ (Succ (Succ Zero))) => (  Cons ((Succ (Succ Zero)), (Cons (Zero, Nil)))) => (  Cons (Zero, Nil)) => (  Succ (Succ (Succ Zero)));
(  Succ (Succ (Succ (Succ (Succ Zero))))) => (  Cons ((Succ (Succ (Succ (Succ (Succ Zero))))), (Cons (Zero, (Cons (Zero,    Nil)))))) => (  Cons (Zero, (Cons (Zero, Nil)))) => (  Succ (Succ (Succ (Succ (Succ Zero)))));
(  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))) => (  Cons ((Succ Zero), (Cons (Zero, (Cons ((Succ Zero), (Cons ((Succ Zero),    (Cons (Zero, Nil)))))))))) => (  Cons (Zero, (Cons ((Succ Zero), (Cons ((Succ Zero), (Cons (Zero, Nil)))))))) => (  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))));
(  Succ (Succ (Succ Zero))) => (  Cons (Zero, (Cons ((Succ Zero), Nil)))) => (  Cons ((Succ Zero), Nil)) => (  Succ (Succ (Succ Zero)));
(  Succ (Succ (Succ (Succ (Succ Zero))))) => (  Cons (Zero, (Cons ((Succ Zero), (Cons (Zero, Nil)))))) => (  Cons ((Succ Zero), (Cons (Zero, Nil)))) => (  Succ (Succ (Succ (Succ (Succ Zero)))));
(  Succ (Succ (Succ Zero))) => (  Cons ((Succ Zero), (Cons (Zero, Nil)))) => (  Cons (Zero, Nil)) => (  Succ (Succ (Succ Zero)));
(  Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))) => (  Cons ((Succ (Succ Zero)), (Cons (Zero, (Cons ((Succ Zero), (Cons (Zero,    Nil)))))))) => (  Cons (Zero, (Cons ((Succ Zero), (Cons (Zero, Nil)))))) => (  Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))));
(  Succ (Succ (Succ Zero))) => (  Cons (Zero, (Cons (Zero, Nil)))) => (  Cons (Zero, Nil)) => (  Succ (Succ (Succ Zero)));
(  Succ Zero) => (  Cons ((Succ (Succ Zero)), Nil)) => (  Nil) => (  Succ Zero);
(  Succ (Succ (Succ (Succ (Succ Zero))))) => (  Cons ((Succ (Succ Zero)), (Cons (Zero, (Cons (Zero, Nil)))))) => (  Cons (Zero, (Cons (Zero, Nil)))) => (  Succ (Succ (Succ (Succ (Succ Zero)))));
(  Succ (Succ (Succ Zero))) => (  Cons ((Succ (Succ (Succ Zero))), (Cons ((Succ Zero), Nil)))) => (  Cons ((Succ Zero), Nil)) => (  Succ (Succ (Succ Zero)));
(  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))) => (  Cons (Zero, (Cons ((Succ Zero), (Cons (Zero, (Cons (Zero, (Cons (Zero,    Nil)))))))))) => (  Cons ((Succ Zero), (Cons (Zero, (Cons (Zero, (Cons (Zero, Nil)))))))) => (  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))));
(  Succ (Succ (Succ Zero))) => (  Cons ((Succ Zero), (Cons ((Succ Zero), Nil)))) => (  Cons ((Succ Zero), Nil)) => (  Succ (Succ (Succ Zero)));
(  Succ Zero) => (  Cons ((Succ (Succ (Succ Zero))), Nil)) => (  Nil) => (  Succ Zero);
(  Succ Zero) => (  Cons ((Succ Zero), Nil)) => (  Nil) => (  Succ Zero);
(  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ    (Succ Zero))))))))))))) => (  Cons (Zero, (Cons (Zero, (Cons ((Succ Zero), (Cons ((Succ (Succ (Succ    Zero))), (Cons ((Succ Zero), (Cons (Zero, (Cons ((Succ Zero),    Nil)))))))))))))) => (  Cons (Zero, (Cons ((Succ Zero), (Cons ((Succ (Succ (Succ Zero))), (Cons    ((Succ Zero), (Cons (Zero, (Cons ((Succ Zero), Nil)))))))))))) => (  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ    (Succ Zero)))))))))))));
(  Succ Zero) => (  Cons (Zero, Nil)) => (  Nil) => (  Succ Zero)
}=?