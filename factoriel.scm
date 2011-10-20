; pour calculer une factoriel

; 8! = 8 * 7!

; en général: n! = n * (n-1)!

(define factoriel (lambda (n) (if (= n 1) 
                  1 
                  (* n (factoriel (- n 1))))))
(factoriel 5)
(factoriel 99)