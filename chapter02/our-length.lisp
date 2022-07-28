(defun our-len (lst)
  (if (null lst)
      0
    (+ (our-len (cdr lst)) 1)))

(format t "~A~%" (our-len '(a b c d e f)))
