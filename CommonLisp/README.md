# [My Common Lisp Practice](../README.md#my-common-lisp-practice)

Uncommon People like it


### References

- https://lisp-lang.org/
- https://en.wikipedia.org/wiki/Common_Lisp
- https://common-lisp.net/


### \<Note>

- Use *GNU CLISP 2.49.93 - GNU 9.1.0* in [JDoodle](https://www.jdoodle.com/execute-clisp-online), unless otherwise specified


### \<List>

- [Fibonacci Sequence (2024.12.15)](#fibonacci-sequence-20241215)


## [Fibonacci Sequence (2024.12.15)](#list)

- Generate the Fibonacci sequence using both regular recursive and tail-recursive methods
- Common Lisp features a variety of functions with similar purposes, such as `if` and `cond`, `loop` and `dotimes`.
- While it may look similar to Clojure at first glance, Clojure is a *Lisp-1* while Common Lisp is a *Lisp-2*, making them somewhat different.
- Code and Output
  <details>
    <summary>Code : FibonacciSequence.lisp</summary>

  ```lisp
  ;; Regular recursive Fibonacci function
  (defun fib-recursive (n)
    "Calculate the n-th Fibonacci number using regular recursion."
    (cond ((= n 1) 1)                             ; cond means "condition" and is used like if-else if or switch statements in other languages.
          ((= n 2) 1)
          (t (+ (fib-recursive (- n 1))           ; t means "true" and is always evaluated as true. It is used as the default-consequent in cond.
                (fib-recursive (- n 2))))))

  ;; Tail-recursive Fibonacci function
  (defun fib-tail-recursive (n &optional (a 1) (b 1))
    "Calculate the n-th Fibonacci number using tail recursion."
    (if (<= n 1)
        a                                         ; then-expression: executed if the condition is true.
        (fib-tail-recursive (1- n) b (+ a b))))   ; optional-else-expression: executed if the condition is false (no explicit 'else' keyword is required).

  ;; Function to calculate and print Fibonacci numbers
  (defun print-fibonacci-numbers (n)
    "Calculate and print Fibonacci numbers up to the n-th term."
    (format t "Fibonacci sequence up to the ~Dth term~%" n)
    (format t "Regular recursive method : ")
    (dotimes (i n)                                ; dotimes is similar to loop but is simpler and specifically used for iterating a fixed number of times.
      (format t "~D " (fib-recursive (1+ i))))
    (format t "~%Tail recursive method    : ")
    (dotimes (i n)
      (format t "~D " (fib-tail-recursive (1+ i)))))
  ```
  ```lisp
  ;; Example execution
  (print-fibonacci-numbers 10)
  ```
  </details>
  <details open="">
    <summary>Output</summary>

  ```lisp
  Fibonacci sequence up to the 10th term
  Regular recursive method : 1 1 2 3 5 8 13 21 34 55 
  Tail recursive method    : 1 1 2 3 5 8 13 21 34 55 
  ```
  </details>
