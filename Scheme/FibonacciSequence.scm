;;;; Fibonacci Sequence
;;;; 2024.12.29

;; 1. Standard recursive method
(define (fib-recursive n)
  "Compute the nth Fibonacci number using standard recursion."
  (if (<= n 2)
      1
      (+ (fib-recursive (- n 1)) (fib-recursive (- n 2)))))

;; 2. Tail recursive method
(define (fib-tail-recursive n . args)
  "Compute the nth Fibonacci number using tail recursion."
  (let ((a (if (null? args) 1 (car args)))
        (b (if (or (null? args) (null? (cdr args))) 1 (cadr args))))
    (cond
      ((= n 1) a)
      ((= n 2) b)
      (else (fib-tail-recursive (- n 1) b (+ a b))))))

;; 3. Bottom-up method
(define (fib-bottom-up n)
  "Compute the nth Fibonacci number using a bottom-up approach."
  (if (<= n 2)
      1
      (let loop ((a 1) (b 1) (count 2))
        (if (= count n)
            b
            (loop b (+ a b) (+ count 1))))))

;; Function to print Fibonacci sequences
(define (print-fib-sequence name sequence)
  "Print a Fibonacci sequence with a given name."
  (display name)
  (display " : ")
  (display sequence)
  (newline))

;; Calculate and print the first 10 terms of the Fibonacci sequence using each method
(print-fib-sequence "Standard Recursive Method"
                    (map fib-recursive (iota 10 1)))

(print-fib-sequence "Tail Recursive Method    "
                    (map fib-tail-recursive (iota 10 1)))

(print-fib-sequence "Bottom-up Method         "
                    (map fib-bottom-up (iota 10 1)))
