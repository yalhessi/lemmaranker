type nat =
 | O
 | S of nat



type bool =
| True
| False

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

let rec less (less_arg0:natural) (less_arg1:natural):bool=
  match less_arg0 with
  | Succ x -> (match less_arg1 with
               | Succ y -> less x y
               | Zero -> False)
  | Zero -> (match less_arg1 with
             | Succ _ -> True
             | Zero -> False)

;;
let rec eqb (n:natural) (m:natural):bool=
  match n with
  | Succ n' -> (match m with
                | Succ m' -> eqb n' m'
                | Zero -> False)
  | Zero -> (match m with
             | Succ _ -> False
             | Zero -> True)

;;
let rec count (count_arg0:natural):natural=
| Cons (y, z) ->
  (match eqb count_arg0 y with
   | True -> Succ (count count_arg0 z)
   | False -> count count_arg0 z)
| Nil -> Zero

;;
let rec insort (insort_arg0:natural):lst=
| Cons (x, y) ->
  (match less insort_arg0 x with
   | True -> Cons (insort_arg0, (Cons (x, y)))
   | False -> Cons (x, (insort insort_arg0 y)))
| Nil -> Cons (insort_arg0, Nil)
;;
let synth  (lf2 : natural) (lf1 : natural): natural-> natural-> natural|>
{

(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ (Succ Zero)) => (  Succ (Succ Zero)) => (  Succ (Succ Zero));
(  Succ (Succ Zero)) => (  Succ (Succ Zero)) => (  Succ (Succ Zero));
(  Succ Zero) => (  Succ (Succ Zero)) => (  Succ (Succ Zero));
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ (Succ Zero)) => (  Succ (Succ Zero)) => (  Succ (Succ Zero));
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ (Succ Zero)) => (  Succ (Succ (Succ Zero))) => (  Succ (Succ (Succ Zero)));
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ (Succ Zero)) => (  Succ (Succ Zero)) => (  Succ (Succ Zero));
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ (Succ Zero)) => (  Succ (Succ Zero));
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ (Succ Zero)) => (  Succ (Succ Zero));
(  Succ (Succ Zero)) => (  Succ (Succ (Succ Zero))) => (  Succ (Succ (Succ Zero)));
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ (Succ Zero)) => (  Succ (Succ Zero));
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ (Succ Zero)) => (  Succ (Succ Zero));
(  Succ Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ Zero) => (  Succ (Succ Zero)) => (  Succ (Succ Zero))
}=?