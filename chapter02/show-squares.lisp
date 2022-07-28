(defun show-squares (start end)
  (do ((i start (+ i 1)))
      ((> i end) 'done)
      (format t "~A ~A~%" i (* i i))))

(show-squares 2 5)

(do ((i 0 (+ i 1)))
    ((> i 10) i)
    (format t "~A ~%" i))
