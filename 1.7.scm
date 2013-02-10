;; 牛顿法求平方根
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
		 x)))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (sqrt x)
  (sqrt-iter 1.0 x))
(define (square x)
  (* x x))
;; 但是这个good-enough不够优秀
;; 比如运行(sqrt 100000000000000000)会久久没有响应，
;; 比如运行(sqrt 0.0001)居然返回0.0323
;; 所以这个good-enough需要重新设计
;; 关键问题是用了绝对误差，用相对误差取代之

(define (good-enough? guess x)
  (display guess)
  (display "\n")
  (display (square guess))
  (display "\n\n")
  (< (abs (- 1
	   (/ guess (improve guess x))))
     0.01))
