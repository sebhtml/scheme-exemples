(define expression (list + 1 2 3))

(eval expression)

(apply (car expression) (cdr expression))