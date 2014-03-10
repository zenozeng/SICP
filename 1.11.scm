;; 递归
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
	 (* 2 (f (- n 2)))
	 (* 3 (f (- n 3))))))

;; 迭代
(define (f n)
  (define (g i a b c)
    (if (= i n)
	c
	(g (+ 1 i) b c (+ a (* 2 b) (* 3 c)))))
  (if (< n 3)
      n
      (g 2 0 1 2)))
