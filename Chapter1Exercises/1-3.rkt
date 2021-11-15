#lang sicp

(define (get-greatest a b c)
  (cond ((and (> a b) (> a c)) a)
        ((> b  c) b)
        (else c)
        ))

(define (get-least a b c)
  (cond ((and (< a b) (< a c)) a)
        ((< b  c) b)
        (else c)
        ))

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-square-largest-two a b c)
  (cond ((and (< a b) (< a c)) (sum-of-squares b c))
        ((< b  c) (sum-of-squares a c))
        (else (sum-of-squares a b))
   ))

(sum-square-largest-two -5 11 -3)