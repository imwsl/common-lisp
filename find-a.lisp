;;; use do loop to move through a list
;;;

(defun print-list (x)
    (dolist (item x)
        (print item)))

;;;(print-list '(1 2 3 4 5))

(defun find-a-list (x l)
    (let ((num 0))
      (dolist (item l)
        (if (eql x item)
          (setf num (+ num 1))
          ))
        num))

(format t "~A~%" (find-a-list 2 '(1 2 2 3 4 5)))
(format t "~A~%" (find-a-list 4 '(4 4 4 4 4 4 7 8 9 4)))

;;; write an advanced version
;;;
(defun find-x-list (x l)
  (if (null l)
    "error: the paramater is null!"
    (if (not (listp l))
      "error: the paramter is not a list"
      (let ((num 0))
        (dolist (item l)
          (if (eql x item)
            (setf num (+ num 1))))
        num))))

(format t "~A~%" (find-x-list 2 Nil))
(format t "~A~%" (find-x-list 2 2))
(format t "~A~%" (find-x-list 2 '(1 2 3 2 2 3 1 15)))
