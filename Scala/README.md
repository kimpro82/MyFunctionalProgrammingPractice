# [My Scala Practice](../README.md#my-scala-practice)

The learned person is Scala!


### \<List>

- [Fibonacci Sequence (2024.03.29)](#fibonacci-sequence-20240329)


## [Fibonacci Sequence (2024.03.29)](#list)

- Generates the Fibonacci sequence up to the specified number of terms
- Run by *Scala code runner version 2.13.10* in [Replit](https://replit.com/)
- Code and Output
  <details>
    <summary>Code : FibonacciSequence.scala</summary>

  ```scala
  object FibonacciSequence {

    /**
    * Generates the Fibonacci sequence up to the specified number of terms.
    * @param n The number of terms in the Fibonacci sequence to generate.
    * @return A list containing the Fibonacci sequence up to the specified number of terms.
    */
    def generateFibonacci(n: Int): List[Int] = {
      // Helper function for generating Fibonacci sequence recursively
      def generateFibonacciHelper(count: Int, a: Int, b: Int, acc: List[Int]): List[Int] = {
        if (count <= 0) acc.reverse
        else generateFibonacciHelper(count - 1, b, a + b, (a + b) :: acc)
        // In Scala, `(a + b) :: acc` is more efficient than `acc :+ (a + b)` for adding elements to a list.
      }

      // Call the helper function to generate the Fibonacci sequence and set initial values
      if (n <= 0) List()
      else if (n == 1) List(1)
      else generateFibonacciHelper(n - 3, 1, 1, List(1, 1))
    }

    /**
    * Main method to print the first 10 terms of the Fibonacci sequence horizontally with spaces between elements.
    * @param args Command line arguments (unused).
    */
    def main(args: Array[String]): Unit = {
      val fibonacciSequence = generateFibonacci(10)
      println(fibonacciSequence.mkString(" "))
    }
  }
  ```
  </details>
  <details open="">
    <summary>Output</summary>

  ```scala
  1 1 2 3 5 8 13 21 34
  ```
  </details>
