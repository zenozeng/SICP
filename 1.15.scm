(define (sine angle)
  (define (p x)
    ((-
      (* 3 x)
      (* 4 (* x x x)))))
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

;; to cacl the sine of 12.15 the function p was applied 5 times
;; and the order of growth = [(10n)^(1/3)]+1
