(defun our-atom (x)
  (not (consp x)))

(format t "~A~%" (our-atom nil)) ;; nil is an atom and list
(format t "~A~%" (our-atom 1))
(format t "~A~%" (our-atom '(1 2 3)))
