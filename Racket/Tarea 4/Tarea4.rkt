#lang plai
;;Ejercicio 1
;; '(foo goo) foo hoo -> '(hoo goo)
(define (remplaza s r ls)
  (cond
    [(empty? ls) empty]
    [(equal? (car ls) s) (cons r (remplaza s r (cdr ls)))]
    [else (cons (car ls) (remplaza s r (cdr ls)))]))

;;Ejercicio 2

(define (listoftype? tipo list)
  (cond
    [(empty? list) #t]
    [else (and (tipo (car list)) (listoftype? tipo (cdr list)))]))
  
;;Ejercicio 3
(struct persona (nombre edad peso altura))
(define (imc p)
         (/ (persona-peso p) (expt (persona-altura p) 2)
            ))

(define p1 (persona "Juan" 19 65 1.75))