(defparameter lst1 nil)
(defparameter lst2 nil)

(defun my-copy-lst (x)
  (if (atom x)
      x
    (cons (car x) (my-copy-lst (cdr x)))))

(setf lst1 '(1 2 3))
(setf lst2 (my-copy-lst lst1))

(format t "~A~%" lst1)
(format t "~A~%" (equal lst1 lst2)) ;;; T
(format t "~A~%" (eql lst1 lst2)) ;;; NIL
