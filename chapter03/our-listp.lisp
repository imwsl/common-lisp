(defun our-listp (x)
  (or (null x) ;; check nil
      (consp x) ;; check x cons object
      ))

(format t "~A~%" (our-listp '(1 2 3)))

(format t "~A~%" (our-listp 1))
