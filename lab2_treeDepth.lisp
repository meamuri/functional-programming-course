;; Определить высоту дерева

(defun maxdepth (l)
  (cond ((null l) 0)
        ((atom l) 0)
        (t (+ 1 (max (maxdepth (cadr l)) (maxdepth (caddr l)))))))

;;               A
;;             /   \
;;            B      C
;;                 /   \
;;                 D    E
(print 
  (maxdepth 
    '(A (B) (C (D) (E)))
  )
)

;;               A
;;             /   \
;;            B      C
;;                 /   \
;;                 D    E
;;                       \
;;                        F
(print 
  (maxdepth 
    '(A (B) (C (D) (E (F))))
  )
)

;;               A
;;                 \
;;                   B              
(print 
  (maxdepth 
    '(A (B))
  )
)

;;
;;     A
;;    / \
;;   B   C
;;  / \  |
;; D   E F
(print 
  (maxdepth 
    '(A (B (D) (E)) (C (F)))
  )
)


;; http://shrager.org/llisp/13.html
;; a bit about trees