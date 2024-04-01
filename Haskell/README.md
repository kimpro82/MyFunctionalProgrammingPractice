# [My Haskell Practice](../README.md#my-haskell-practice)

&nbsp;&nbsp;The elders' functional programming language


### \<Note>

&nbsp;&nbsp;Compile and run on *Glasgow Haskell Compiler*(*GHC*) *version 9.4.8* in [Replit](https://replit.com/), unless otherwise specified

- Compile
  ```hs
  ghc FibonacciSequence.hs
  ```
- Run
  ```hs
  ./FibonacciSequence
  ```


### \<List>

- [Fibonacci Sequence (2024.04.01)](#fibonacci-sequence-20240401)


## [Fibonacci Sequence (2024.04.01)](#list)

- Generate the Fibonacci sequence up to the specified number of terms
- Code and Output
  <details>
    <summary>Code : FibonacciSequence.hs</summary>

  ```hs
  -- | Calculates the nth Fibonacci number using recursion.
  fibonacci :: Int -> Int
  fibonacci n
      | n <= 1 = n
      | otherwise = fibonacci (n - 1) + fibonacci (n - 2)

  -- | Main function to calculate and print the first 10 Fibonacci numbers.
  main :: IO ()
  main = do
      let fibNumbers = take 10 [fibonacci i | i <- [1..]]
      putStrLn $ unwords $ map show fibNumbers
  ```
  </details>
  <details open="">
    <summary>Output</summary>

  ```hs
  1 1 2 3 5 8 13 21 34 55
  ```
  </details>
