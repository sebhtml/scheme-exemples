(define count-elements (lambda (aList)
                         (if (null? aList) 0 (+ 1 (count-elements (cdr aList))))))

(define build-balanced-tree
        (lambda (aList)
          (let* ((count (count-elements aList))
            (on-left (floor (/ rest 2)))
            (on-right (- rest on-left)))
            
            

; left child < parent < right child
(build-balanced-tree (list 1 2 4 5 6 7 8 9 10 19 21))