# [My F# Practice](../README.md#my-f-practice)

I love Microsoft


### \<List>

- [Fibonacci Sequence (2024.03.30)](#fibonacci-sequence-20240330)


## [Fibonacci Sequence (2024.03.30)](#list)

- Generates the Fibonacci sequence up to the specified number of terms
- Run on [Replit](https://replit.com/)
- Code and Output
  <details>
    <summary>Code : FibonacciSequence.fs</summary>

  ```fs
  // Calculates the Fibonacci sequence up to a specified number of terms and prints them.
  //
  // Parameters:
  //   n : int - The number of Fibonacci terms to generate.
  let rec printFibonacciSequence (n: int) =
    // Helper function to generate Fibonacci sequence recursively
    let rec fibHelper (count: int) (current: int) (next: int) =
      if count <= 0 then () // Base case: if count is 0 or negative, do nothing
      else
        // Print the current Fibonacci number
        printf "%d " current
        // Calculate the next Fibonacci number
        let newNext = current + next
        // Recursively call fibHelper with updated count and current values
        fibHelper (count - 1) next newNext

    // Start generating the sequence recursively from the third term
    fibHelper n 1 1

  // Test the function by printing the first 10 Fibonacci numbers
  printFibonacciSequence 10
  ```
  </details>
  <details open="">
    <summary>Output</summary>

  ```fs
  1 1 2 3 5 8 13 21 34 55
  ```
  </details>
