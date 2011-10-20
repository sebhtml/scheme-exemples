; fermetures, voir http://fr.wikipedia.org/wiki/Fermeture_%28informatique%29#En_Common_Lisp

; prédicat-est-égal retourne une fonction qui retourne vrai si son argument est nombre, faux sinon

(define prédicat-est-égal (lambda (nombre)
                   (lambda (x) (= nombre x))))

(define alpha 3)
(define égal-à-alpha (prédicat-est-égal alpha))

(égal-à-alpha 3)
(égal-à-alpha 99)

