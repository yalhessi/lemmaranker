type nat =
 | O
 | S of nat

type natural =
| Zero
| Succ of natural

let rec plus (plus_arg0:natural) (plus_arg1:natural):natural=
  match plus_arg0 with
  | Zero -> plus_arg1
  | Succ n -> Succ (plus n plus_arg1)
;;
let synth  (lf2 : natural) (y : natural): natural-> natural-> natural|>
{

(  Succ (Succ (Succ Zero))) => (  Succ (Succ (Succ Zero))) => (  Succ (Succ (Succ (Succ (Succ (Succ Zero))))));
(  Succ (Succ (Succ (Succ Zero)))) => (  Succ Zero) => (  Succ (Succ (Succ (Succ (Succ Zero)))));
(  Succ (Succ (Succ Zero))) => (  Zero) => (  Succ (Succ (Succ Zero)));
(  Succ Zero) => (  Succ Zero) => (  Succ (Succ Zero));
(  Succ (Succ (Succ Zero))) => (  Succ Zero) => (  Succ (Succ (Succ (Succ Zero))));
(  Succ Zero) => (  Succ (Succ (Succ Zero))) => (  Succ (Succ (Succ (Succ Zero))));
(  Succ (Succ Zero)) => (  Succ (Succ Zero)) => (  Succ (Succ (Succ (Succ Zero))));
(  Succ (Succ Zero)) => (  Succ Zero) => (  Succ (Succ (Succ Zero)));
(  Succ Zero) => (  Succ (Succ Zero)) => (  Succ (Succ (Succ Zero)));
(  Succ (Succ Zero)) => (  Zero) => (  Succ (Succ Zero));
(  Succ Zero) => (  Zero) => (  Succ Zero)
}=?