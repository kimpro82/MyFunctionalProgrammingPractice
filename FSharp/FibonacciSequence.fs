// Fibonacci Sequence
// 2024.03.30


/// Calculates the Fibonacci sequence up to a specified number of terms and returns them as a list.
/// 
/// Parameters:
///   n : int - The number of Fibonacci terms to generate.
/// Returns:
///   int list - The list containing the Fibonacci sequence up to the nth term.
let rec fibonacciSequence (n: int) =
    // Helper function to generate Fibonacci sequence recursively
    let rec fibHelper (count: int) (current: int) (next: int) (acc: int list) =
        if count <= 0 then List.rev acc // Base case: if count is 0 or negative, return the reversed accumulator list
        else
            // Calculate the next Fibonacci number
            let newNext = current + next
            // Recursively call fibHelper with updated count, current values, and accumulator
            fibHelper (count - 1) next newNext (current :: acc)

    // Start generating the sequence recursively from the third term
    fibHelper n 1 1 []

// Test the function by printing the first 10 Fibonacci numbers
let fibonacci10 = fibonacciSequence 10
printfn "%A" fibonacci10
