#!/usr/bin/sbcl --script
;; 8. Проверить, является ли указанное число простым.

;; function which checks that number is prime
(defun isprime (x)
  (if (< x 2)
	  (return-from isprime nil)
	;; ceiling and fceiling produce a quotient that has been truncated toward positive infinity; 
	;; that is, the quotient represents the smallest mathematical integer 
	;; that is not smaller than the mathematical result.
	(dotimes (i (+ (ceiling (sqrt x)) 1))
	  (if (> i 1)
		  (if (< i x)
			  (if (equal (mod x i) 0)
				  (return-from isprime nil))))))

    (return-from isprime t)
)

;; service provides userfriendly output
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
