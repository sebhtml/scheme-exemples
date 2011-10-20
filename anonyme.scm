
; on définit une fonction anonyme (sans nom) pour l'utiliser une seule fois

(define foo (lambda (x y) (+ x y)))

(foo 1 2)

((lambda (x y) (+ x y)) 1 2)