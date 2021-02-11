#lang sicp

;Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

;(define (p) (p))
;(define (test x y)
;  (if (= x 0)
;      0
;      y))

;Then he evaluates the expression
;(test 0 (p))

;So, Applicative order is "evaluate the arguments then apply". With Applicative, the interpreter would start by evaluating the function (p)
;However that would run in an infinite loop, as (p) has no base case and would run recursively for ever.

;With Normative order, when Ben runs (test 0 (p)), it will "fully expand and then reduce".

;So (test 0 (p)) becomes:
; (if (= 0 0)
;   0
;  (p))
;0 equals 0 here, so 0 is returned, and the interper never gets to (p)