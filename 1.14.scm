;; the define of count change
;; 容易理解但是低效的递归

(define (count-change amount)
  (define (cc amount kinds-of-coins)
    (cond ((= amount 0) 1)
	  ((or (< amount 0) (= kinds-of-coins 0)) 0)
	  (else (+ (cc amount
		       (- kinds-of-coins 1))
		   (cc (- amount
			  (first-denomination kinds-of-coins))
		       kinds-of-coins)))))

  (define (first-denomination kinds-of-coins)
    (cond ((= kinds-of-coins 1) 1)
	  ((= kinds-of-coins 2) 5)
	  ((= kinds-of-coins 3) 10)
	  ((= kinds-of-coins 4) 25)
	  ((= kinds-of-coins 5) 50)))
  (cc amount 5))



(count-change 100)

(count-change 20)

;; 20<1,5,10> {
;;     20<1,5> {
;;         => 20<1>
;;         15<1,5> {
;;             => 15<1>
;;             10<1,5> {
;;                 => 10<1>
;;                 5<1,5> {
;;                     => 5<1>
;;                     => 0<1,5>
;;                 }
;;             }
;;         }
;;     }
;;     10<1,5,10> {
;;         10<1,5> {
;;             => 10<1>
;;             5<1,5> {
;;             => 5<1>
;;             => 0<1,5>
;;             }
;;         }
;;         => 0<1,5>
;;     }
;; }

;; Order of Growth:
;; see https://github.com/jimweirich/sicp-study/blob/master/scheme/chapter1/ex1_14.scm
;;
;; There is a good discussion of order of growth issues for this
;; problem at: http://wiki.drewhess.com/wiki/SICP_exercise_1.14
;;
;; The upshot is that the space growth is theta(n) and the time
;; (i.e. number of operations) growth is theta(n^5).  (or more
;; generally, theta(n^c) where c is the number of coin denominations).
