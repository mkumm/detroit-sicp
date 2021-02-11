#lang sicp

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))

; Consider the following procedures, where A is the procedure defined above:

(define (f n) (A 0 n)) ; Here, x = 0, so from line 5 above, it would become 2y, rather, 2n.

(define (g n) (A 1 n)) ; 2^n. x = 1, but since that condition doesn't exist, we need to recurse once.

(define (h n) (A 2 n)) ; 2^(h (n-1))