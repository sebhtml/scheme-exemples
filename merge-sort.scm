(define get-first-elements
  (lambda (aList n)
    (if (= n 0)
        null
        (cons (car aList) (get-first-elements (cdr aList) (- n 1)))
        )))

(define get-last-elements
  (lambda (aList n)
    (if (= (count-elements aList) n)
       aList
       ; ce code fait une copie inutile ci-dessous
        ; (cons (car aList) (if (null? (cdr aList)) null (get-last-elements (cdr aList) (- n 1))))
        (get-last-elements (cdr aList) n))))

(define count-elements (lambda (aList)
                         (if (null? aList)
                             0
                             (+ 1 (count-elements (cdr aList))))))

(define merge
  (lambda (list1 list2)
    (cond ((null? list1) list2)
           ((null? list2) list1)
           ((< (car list1) (car list2)) (cons (car list1) (merge (cdr list1) list2)))
           (else (cons (car list2) (merge (cdr list2) list1))))))
  
(define merge-sort
  (lambda (aList)
    (if (null? (cdr aList))
        aList
    (let* ((count (count-elements aList))
          (half-count (floor (/ count 2))))      
    (merge (merge-sort (get-first-elements aList half-count)) 
           (merge-sort (get-last-elements aList (- count half-count))))))))

(merge-sort (list 9 8 736 381 1 10 100 9 8 736 381 1 10 100 9 8 736 381 1 10 100 9 8 736 381 1 10 100 9 8 736 381))
;(get-last-elements (list 9 8 736 381 1 10 100) 2)

;(merge (list 1 5 10 15) (list 2 7 12 17))

