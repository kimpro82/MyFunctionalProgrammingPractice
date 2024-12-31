(* Fibonacci Sequence *)
(* 2024.12.30 *)

(* 1. Standard recursive method *)
let rec fib_recursive n =
  if n <= 2 then 1
  else fib_recursive (n - 1) + fib_recursive (n - 2)

(* 2. Tail recursive method *)
let fib_tail_recursive n =
  let rec aux n a b =
    match n with
    | 1 -> a
    | 2 -> b
    | _ -> aux (n - 1) b (a + b)
  in aux n 1 1

(* 3. Bottom-up method *)
let fib_bottom_up n =
  if n <= 2 then 1
  else
    let rec loop a b count =
      if count = n then b
      else loop b (a + b) (count + 1)
    in loop 1 1 2

(* Function to print Fibonacci sequences *)
let print_fib_sequence name sequence =
  Printf.printf "%s : %s\n" name (String.concat ", " (List.map string_of_int sequence))

(* Calculate and print the first 10 terms of the Fibonacci sequence using each method *)
let () =
  let range = List.init 10 (fun x -> x + 1) in
  print_fib_sequence "Standard Recursive Method" (List.map fib_recursive range);
  print_fib_sequence "Tail Recursive Method    " (List.map fib_tail_recursive range);
  print_fib_sequence "Bottom-up Method         " (List.map fib_bottom_up range)
