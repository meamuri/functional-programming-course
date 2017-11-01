#!/usr/bin/sbcl --script
;; 8. Проверить, является ли указанное число простым.

;; function which checks that number is prime
(defun isprime (n &optional (d (- n 1))) 
	(if (= n 1)
		(return-from isprime nil))
  (or (= d 1)
      (and (/= (rem n d) 0)
           (isprime  n (- d 1)))))

;; service provides userfriendly output
(defun prime-service (x)
  (if (equal (isprime x) t)
		(format t "~D is prime number ~%" x)
		(format t "~D is not prime number ~%" x)    
	)
)

(prime-service 1)
(prime-service 7)
(prime-service 13)
(prime-service 19)
(prime-service 25)
(prime-service 40)
(prime-service 97)
