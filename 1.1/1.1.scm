#lang sicp

486

(+ 137 349)

(- 1000 334)

(* 5 99)

(/ 10 5)

(+ 2.7 10)

(+ 21 35 12 7)

(* 25 4 12)

(+ (* 3 5) (- 10 6))

(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))

(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))

(define size 2)

size
(* 5 size)

(define pi 3.14159)
(define radius 10)
(define circumference (* 2 pi radius))
(* pi (* radius radius))
circumference

(define (square x) (* x x))
(square 21)
(square (+ 2 5))
(square (square 3))

(define (sum-of-squares x y) 
      (+ (square x) (square y)))
(sum-of-squares 3 4)

(define (f a) 
      (sum-of-squares (+ a 1) (* a 2)))
(f 5)

(define (abs x)
      (cond ((> x 0) x)
            ((= x 0) 0)
            ((< x 0) (- x))
      )
)

(abs 5)
(abs 0)
(abs -5)

(define (abs2 x) 
      (cond ((< x 0) (- x)) 
            (else x)))

(abs2 5)
(abs2 0)
(abs2 -5)

(define (abs3 x)
      (if (< x 0)
          (- x)
          x))

(abs3 5)
(abs3 0)
(abs3 -5)

(define z 9)
(and (> z 5) (< z 10))

(define (>= x y) (or (> x y) (= x y)))
(>= 10  5)
(>= 10 10)
(>= 5 10)
