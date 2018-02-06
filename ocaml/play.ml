(* fibonacci using proper tail recursion *)

let rec opt_fib x runner = 
  match x with
    | 0 -> runner
    | x -> opt_fib (x - 1) (x * runner)
;;

let fib x = opt_fib x 1;;
