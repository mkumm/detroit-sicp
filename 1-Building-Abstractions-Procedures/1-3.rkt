#lang racket/base

(define (sum-2-biggest-squares a b c)
  (cond
    ; if a is smallest
    ((and (<= a b) (<= a c)) (+ (* b b) (* c c)))
    ; if b is smallest
    ((and (<= b a) (<= b c)) (+ (* a a) (* c c)))
    ; if c is smallest
    ((and (<= c b) (<= c a)) (+ (* b b) (* a a)))
  )
)

; (sum-2-biggest-squares 2 3 4) >> 25