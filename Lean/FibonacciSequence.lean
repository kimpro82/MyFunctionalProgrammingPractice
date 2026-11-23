/-!
# Fibonacci sequences / 2026.11.23

Compare direct and tail-recursive Fibonacci implementations, and generate their
values over an inclusive range of indices.
-/

/-- Compute the `n`th Fibonacci number by the direct recursive definition. -/
def fibRec : Nat → Nat
  | 0 => 0
  | 1 => 1
  | n + 2 => fibRec (n + 1) + fibRec n

/-- Compute the `n`th Fibonacci number using tail recursion. -/
def fibTail (n : Nat) : Nat :=
  let rec go : Nat → Nat → Nat → Nat
    | 0, a, _ => a
    | k + 1, a, b => go k b (a + b)
  go n 0 1

/-- Generate Fibonacci values from index `0` through `limit` in linear time. -/
def fibSeq (limit : Nat) : List Nat :=
  let rec go : Nat → Nat → Nat → List Nat → List Nat
    | 0, a, _, acc => (a :: acc).reverse
    | k + 1, a, b, acc => go k b (a + b) (a :: acc)
  go limit 0 1 []

-- Uncomment these commands for quick inspection in the Lean editor.
-- #eval fibRec 10
-- #eval fibTail 10
-- #eval fibRec 10 == fibTail 10
-- #eval fibSeq 10

/-- Print both implementations' Fibonacci values for indices `0` through `10`. -/
def main : IO Unit := do
  IO.println s!"Standard recursion (0..10): {(List.range 11).map fibRec}"
  IO.println s!"Tail recursion (0..10): {fibSeq 10}"
