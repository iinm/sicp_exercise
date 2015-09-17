(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

; (test 0 (p))

; Normal order -> (p)は必要になるまで評価されない。ここでは0を返す。
; Applicative order -> (p)は評価される。無限ループ。
