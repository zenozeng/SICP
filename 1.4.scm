(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; 不知道要怎么解释
;; 参考了 https://github.com/jimweirich/sicp-study/blob/master/scheme/chapter1/ex1_04.scm

;; (a-plus-abs-b 2 3)
;; ((if (> 3 0) + -) 2 3)    ;; First expansion
;; ((if true + -) 2 3)       ;; Expand condition
;; (+ 2 3)                   ;; Substitute if
;; 5                         ;; Substitute the addition

;; (a-plus-abs-b 2 3)
;; ((if (> 3 0) + -) 2 3) ;代入数据
;; ((if true + -) 2 3) ;运行内部表达式
;; (+ 2 3) ;运行if
;; 5 ;运行加法
