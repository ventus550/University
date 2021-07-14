#lang racket

(define (sq x) (* x x))


(define (repeated p n)

  (define (compose f g)
    (lambda (x) (f (g x))))

  (define (identity x) x)

  (if (> n 0)
      (compose p (repeated p (- n 1)))
      identity))

;;((repeated sq 0) 2)



(define (pi-prod)
         (lambda (x) (/ (* x (+ x 2)) (* (+ x 1) (+ x 1)))))

(define (product val next start end acc)
  (if (> start end)
      acc
      (product val next (next start) end (* (val start) acc))))

(define (productR val next start end)
  (if (> start end)
      1
      (* (val start)
      (productR val next (next start) end))))

;;(* (product (pi-prod) (lambda (x) (+ x 2)) 2.0 300 1) 4)


(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
         (accumulate combiner null-value term (next a) next b))))

;;(* 4 (accumulate * 1 (pi-prod) 2.0 (lambda (x) (+ x 2)) 300))

(define (accumulateI combiner null-value term a next b)
  (if (> a b)
      null-value
      (accumulateI combiner (combiner (term a) null-value) term (next a) next b )))

;;(* 4 (accumulateI * 1 (pi-prod) 2.0 (lambda (x) (+ x 2)) 300))







  









