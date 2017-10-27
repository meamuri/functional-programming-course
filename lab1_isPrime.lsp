; 8. Проверить, является ли указанное число простым.

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

(print (isprime 7))
(print (isprime 13))
(print (isprime 19))
(print (isprime 25))
(print (isprime 40))
(print (isprime 97))
