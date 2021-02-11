#lang sicp

(define (cube-root x)
  (cube-root-iter 1.0 0 x))
(define (cube-root-iter guess old-guess x)
  (if (good-enough? guess old-guess)
      guess
      (cube-root-iter (improve guess x)
                guess
                 x)))
(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))  
    3))
(define (square x) (* x x))
(define (average x y)
  (/ (+ x y) 2))
(define (good-enough? guess old-guess)
  (< (abs (- guess old-guess)) 0.001))
(cube-root 25)