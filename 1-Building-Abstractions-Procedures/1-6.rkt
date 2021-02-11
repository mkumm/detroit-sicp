#lang sicp

; This should fail, as Scheme is an applicative order language.
; It will evaluate all of the arguments as soon as a function si called. 
; 'new-if' is a procedure, so all of its sub-expressions will get evaluated as soon as 'new-if' is applied (before it acts on any operands provided)
; That includes the call to 'sqrt-iter', which recursively calls 'new-if' and creates an infinite loop.