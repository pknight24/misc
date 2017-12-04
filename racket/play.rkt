#lang racket

(define (power x n runningValue)
  (if (= n 0) runningValue (power x (- n 1) (* x runningValue))))

(define (incfun a fun)
  (+ 1 (fun a)))

(define (pythag a b)
  (let* [(x (* a a))
        (y (* b b))
        (s (+ x y))]
    (lambda (z) (sqrt (+ s (power z 2 1))))))

(define (getin i lst)
  (define (nestcdr x l) (if (= x 0) l (nestcdr (- x 1) (cdr l))))
  (car (nestcdr i lst)))


(define days
    (list
     (cons 0 "Sunday")
     (cons 1 "Monday")
     (cons 2 "Tuesday")
     (cons 3 "Wednesday")
     (cons 4 "Thursday")
     (cons 5 "Friday")
     (cons 6 "Saturday")))

(define (getday d x)
  (cdr (list-ref d (- x 1))))

(define (pvals d)
  (display (cdr (car d)))
  (newline)
  (if (not (null? (cdr d))) (pvals (cdr d)) (newline)))

(define (pkeys d)
  (display (car (car d)))
  (newline)
  (if (not (null? (cdr d))) (pkeys (cdr d)) (newline)))

(define (phash d)
  (display (car (car d)))
  (display ": ")
  (display (cdr (car d)))
  (newline)
  (if (not (null? (cdr d))) (phash (cdr d)) (newline)))

(define (makehash a b)
  (map cons a b))
  