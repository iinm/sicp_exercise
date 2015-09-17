(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (abs (* guess 1e-10))))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; 値が小さい時 -> 精度を指定する数値が大きすぎる。
; 値が大きい時 -> 推定値が収束するのに時間がかかる。
