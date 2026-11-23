def fibRec : Nat → Nat
  | 0 => 0
  | 1 => 1
  | n + 2 => fibRec (n + 1) + fibRec n

def fibTail (n : Nat) : Nat :=
  let rec go : Nat → Nat → Nat → Nat
    | 0, a, _ => a
    | k + 1, a, b => go k b (a + b)
  go n 0 1

def fibSeq (fib : Nat → Nat) (limit : Nat) : List Nat :=
  (List.range (limit + 1)).map fib

-- #eval fibRec 10
-- #eval fibTail 10
-- #eval fibRec 10 == fibTail 10
-- #eval fibSeq fibRec 10
-- #eval fibSeq fibTail 10

def main : IO Unit := do
  IO.println s!"Standard recursion (0..10): {fibSeq fibRec 10}"
  IO.println s!"Tail recursion (0..10): {fibSeq fibTail 10}"
