(defun sum (lst)
  (if (null lst)
      0
    (let ((x (car lst)))
      (if (null x)
	  (sum (cdr lst))
	(+ x (sum (cdr lst))))
      ))
  )

(format t "~A~%" (sum '(nil 2 3 nil nil 1 nil 1)))
