;; Ben Bitdiddle的检测方法
(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))
(test 0 (p))

;;;; 我的答案
;;; 如果是应用序（applicative-order）
(test 0 (p))
;; 代入数据
(if (= 0 0)
    0
    (p))
;; 然后对内部求值
;; (p) 返回 (p) 导致无限循环
;; 事实上，我再guile上运行这段程序的时候，它失去了响应，直到我强行interrupt

;;; 如果是正则序
;; 代入数据
(if (= 0 0)
    0
    (p))
;; 运行if
;; 返回 0
