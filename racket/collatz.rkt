#lang racket

(define (collatz x)
  (display x)
  (newline)
  (if (> x 1)
      (if (= (remainder x 2) 0)
          (collatz (/ x 2))
          (collatz (+ (* 3 x) 1)))
      (newline)))
(display "Please enter an integer greater than 0: ")
(collatz (read))