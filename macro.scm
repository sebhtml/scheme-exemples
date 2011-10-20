(define-syntax mon-operation
 (syntax-rules ()
 ((mon-operation argument1 ...)(+ argument1 ...))))

(mon-operation 1 2 3 4)