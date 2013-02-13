;; 计算出帕斯卡三角
(define (pascal row col)
  (if (or (= col 1) (= col row)) 1
      (+ (pascal (- row 1) (- col 1))
	 (pascal (- row 1) col))))
