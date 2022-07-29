(format t "~A~%" (cons (list (list 1 2 3)) nil))

(defun make-lst (elt n)
  (list elt n))

(format t "~A~%" (make-lst 4 1))
(format t "~A~%" (cons (make-lst 4 1) nil))
