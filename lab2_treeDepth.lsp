; Определить высоту дерева

(defun maxdepth (l)
  (cond ((null l) 0)
        ((atom l) 0)
        (t (+ 1 (max (maxdepth (cadr l)) (maxdepth (caddr l)))))))

(print (maxdepth '(A (B) (C (D) (E)))))