#!/usr/bin/sbcl --script
;; 8. Проверить, является ли указанное число простым.

;; function which checks that number is prime
(defun isprime (x)
  (if (< x 2)
	  (return-from isprime nil)
	(dotimes (i (+ (ceiling (sqrt x)) 1))
	  (if (> i 1)
		  (if (< i x)
			  (if (equal (mod x i) 0)
				  (return-from isprime nil))))))

    (return-from isprime t)
)

;; Функция, проверяющая, является ли x корнем многочлена с коэффициентами a, b, c
;; Если коэффициенты многочлена не заданы, будет взят многочлен x^2 - 2*x + 1
(defun prime-service (x)
  (if (equal (isprime x) nil)
		(format t "~D is prime number ~%" x)
		(format t "~D is not prime number ~%" x)    
	)
)

(prime-service 7)
(prime-service 13)
(prime-service 19)
(prime-service 25)
(prime-service 40)
(prime-service 97)
