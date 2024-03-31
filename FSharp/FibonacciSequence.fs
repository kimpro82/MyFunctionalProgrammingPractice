// Fibonacci Sequence
// 2024.03.30


/// Calculates the Fibonacci sequence up to a specified number of terms and returns them as a string.
/// 
/// Parameters:
///     n : int - The number of Fibonacci terms to generate.
/// Returns:
///     string - The string representation of the Fibonacci sequence up to the nth term.
let rec fibonacciSequenceString (n: int) =
    // Helper function to generate Fibonacci sequence recursively
    let rec fibHelper (count: int) (current: int) (next: int) (acc: string) =
        if count <= 0 then acc // Base case: if count is 0 or negative, return the accumulator string
        else
            // Calculate the next Fibonacci number
            let newNext = current + next
            // Recursively call fibHelper with updated count, current values, and accumulator
            fibHelper (count - 1) next newNext (sprintf "%s%d " acc current)
    
    // Start generating the sequence recursively from the third term
    fibHelper n 1 1 ""

// Test the function by printing the first 10 Fibonacci numbers
let fibonacci10String = fibonacciSequenceString 10
printfn "First 10 Fibonacci numbers: [%s]" fibonacci10String
