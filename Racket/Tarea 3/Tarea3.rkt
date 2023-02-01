#lang plai
;;Ejercicio 1
(define (decremental? 4num)
  (cond
    [(and (and (> (car 4num) (cadr 4num)) (> (cadr 4num) (caddr 4num)))
          (> (caddr 4num) (cadddr 4num))) #f #t]
    [else #t #f]))
;;Ejercicio 2 
(define (pares? list)
  (if (empty? list)
      #t
     (and (even? (car list)) (pares? (cdr list)))))


;;Ejercicio 3
(define (multiplica lista)
  (if (empty? lista)
             1
             (* (car lista) (multiplica (cdr lista)))))

;;Ejercicio 4
(define (entierra s n)
  (cond
    [(< n 0) (error 'entierra "No")]
    [(zero? n) s]
    [else (list (entierra s (- n 1)))]))