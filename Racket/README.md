# [My Racket Practice](../README.md#my-racket-practice)

  Some people say that Racket is an easy and simple functional language, but I believe that the simplicity of its syntax doesn't necessarily mean simplicity in what it can produce. It's a language with unique character and extensibility.


### References

- https://www.racket-lang.org/
- https://en.wikipedia.org/wiki/Racket_(programming_language)
- https://cs.uwaterloo.ca/~plragde/flaneries/TYR/index.html


### \<Note>

- Use Racket version 6.8 in [OneComplier](https://onecompiler.com/racket/), unless otherwise specified


### \<List>

- [Fibonacci Sequence (2024.12.18)](#fibonacci-sequence-20241218)


## [Fibonacci Sequence (2024.12.18)](#list)

- Generate the Fibonacci sequence using regular recursive, tail-recursive and botthom-up methods
- It looks very similar with [Common Lisp](/CommonLisp/)
- Code and Output
  <details>
    <summary>Code : FibonacciSequence.rkt</summary>

  ```lisp
  ;; 1. Standard recursive method
  (define (fib-recursive n)
    "Compute the nth Fibonacci number using standard recursion."
    (if (<= n 2)
        1
        (+ (fib-recursive (- n 1)) (fib-recursive (- n 2)))))

  ;; 2. Tail recursive method
  (define (fib-tail-recursive n [a 1] [b 1])
    "Compute the nth Fibonacci number using tail recursion."
    (cond
      [(= n 1) a]
      [(= n 2) b]
      [else (fib-tail-recursive (- n 1) b (+ a b))]))

  ;; 3. Bottom-up method
  (define (fib-bottom-up n)
    "Compute the nth Fibonacci number using a bottom-up approach."
    (if (<= n 2)
        1
        (let loop ([a 1] [b 1] [count 2])
          (if (= count n)
              b
              (loop b (+ a b) (+ count 1))))))
  ```
  ```lisp
  ;; Function to print Fibonacci sequences
  (define (print-fib-sequence name sequence)
    "Print a Fibonacci sequence with a given name."
    (printf "~a : ~a\n" name sequence))
  ```
  ```lisp
  ;; Calculate and print the first 10 terms of the Fibonacci sequence using each method
  (print-fib-sequence "Standard Recursive Method"
                      (map fib-recursive (range 1 11)))

  (print-fib-sequence "Tail Recursive Method    "
                      (map fib-tail-recursive (range 1 11)))

  (print-fib-sequence "Bottom-up Method         "
                      (map fib-bottom-up (range 1 11)))
  ```
  </details>
  <details open="">
    <summary>Output</summary>

  ```lisp
  Standard Recursive Method : (1 1 2 3 5 8 13 21 34 55)
  Tail Recursive Method     : (1 1 2 3 5 8 13 21 34 55)
  Bottom-up Method          : (1 1 2 3 5 8 13 21 34 55)
  ```
  </details>
