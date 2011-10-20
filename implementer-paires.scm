; cons retourne une fonction

; 'car est un symbole, en Ruby, ce symbole serait :car

(define (cons a b) 
  (lambda (c) (if (equal? c 'car)
                  a
                  (if (equal? c 'cdr) 
                      b 
                      'null))))

; car appelle son argument avec l'argument 'car
(define (car a) (a 'car))

; cdr appelle son argument avec l'argument 'cdr
(define (cdr a) (a 'cdr))

; foo est une paire

(define foo (cons 1 2))

(print (car foo))

(newline)
(print (cdr foo))

(newline)

; définissons une paire de fonction

(define bar (cons + print))

((cdr bar) (car bar))