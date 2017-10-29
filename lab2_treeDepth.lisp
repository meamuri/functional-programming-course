;; Определить высоту дерева

(defun maxdepth (l)
  (cond ((null l) 0)
        ((atom l) 0)
        (t (+ 1 (max (maxdepth (cadr l)) (maxdepth (caddr l)))))
  )
)

(defun depth-service (tree)
		(format t "~D is depth of tree ~%" (maxdepth tree))		
)

;;               A
;;             /   \
;;            B      C
;;                 /   \
;;                 D    E
(depth-service 
  '(A (B) (C (D) (E)))
)

;;               A
;;             /   \
;;            B      C
;;                 /   \
;;                 D    E
;;                       \
;;                        F
(depth-service 
  '(A (B) (C (D) (E (F))))
)

;;               A
;;                 \
;;                   B              
(depth-service 
  '(A (B))
)

;;
;;     A
;;    / \
;;   B   C
;;  / \  |
;; D   E F
(depth-service 
  '(A (B (D) (E)) (C (F)))
)

;; http://shrager.org/llisp/13.html
;; a bit about trees