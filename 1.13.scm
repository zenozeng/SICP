(define (test n)
  (define (fib n)
    (define (iter a b count)
      (if (= 0 count)
	  b
	  (iter (+ a b) a (- count 1))))
    (iter 1 0 n))
  (define (f n)
    (define φ (/ (+ 1 (sqrt 5)) 2))
    (/ (expt φ n) (sqrt 5)))
  (define (g n)
    (define ψ (/ (- 1 (sqrt 5)) 2))
    (/ (expt ψ n) (sqrt 5)))
  (abs (- (fib n) (- (f n) (g n)))))

;; 老实说我不知怎么用Scheme去证明，普通证明的话可以看看这个：
;; http://www.cppblog.com/cuigang/archive/2008/03/12/44316.aspx
