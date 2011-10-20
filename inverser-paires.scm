(define invert
  (lambda (aList)
    (if (null? aList)
        null
        (cons (car (cdr aList))
        (cons (car aList)
         (invert (cdr (cdr aList))))))))


(invert (list 1 2 2 3 4 5 6 7))

; la liste a un nombre pair de trucs
; doit retourner (list 2 1 3 2 5 4 7 6)