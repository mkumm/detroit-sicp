#lang sicp

; Exercise 1.5
;
; Ben DItbiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

; What behavior will Ben observe... eval with
(test 0 (p))

; Answer
; 
; I haven't seen anything like (define (p) (p)); hoping that it is some nonesense to see if it ever gets evaluated. Applicative-order langueages would force the evaluation of (define (p) (p)) at the time of first reference and never complete.
; Normal-order evaluation would evaluate the function since x is 0 and y is never used. 
