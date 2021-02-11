#lang racket/base

; Exercise 1.4.

; Observe that our model of evaluation allows for combinations whose operators
; are compound expressions. Use this observation to describe the behavior of the
; following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; To add a and the abs value of b,
;   if b is greater than 0, add a.
;   otherwise, add b.