;;;; My Initial Commoon Lisp Practice : Fibonacci Sequence
;;;; 2024.12.15
;;;;
;;;; This module provides functions to calculate Fibonacci numbers using
;;;; both regular recursive and tail-recursive methods.
;;;; The sequence starts with 1, 1.

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

;; Example execution
(print-fibonacci-numbers 10)
