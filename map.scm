(define fibo-rec (lambda (i) 
               (if (< i 3) 1
                   (+ (fibo-rec (- i 2)) (fibo-rec (- i 1))))))


(define fibo-tail-rec (lambda (target current s t)
                (if (= target current) (+ s t)
                    (fibo-tail-rec target (+ 1 current) t (+ s t)))))

(define fibo (lambda (i)
               (if (< i 3) 1
                  (fibo-tail-rec i 3 1 1))))

(define get-indexes (lambda (i j)
                      (if (> i j) null
                          (cons i (get-indexes (+ i 1) j)))))

(define indexes (get-indexes 1 1000))

;indexes

;(fibo 100)

(define map (lambda (reduce aList)
              (if (null? aList)
                  null
              (cons (reduce (car aList)) (map reduce (cdr aList))))))


(map fibo (get-indexes 900 905))