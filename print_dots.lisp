(defun print-dots (x)
    (and (not (<= x 0))
        (print "*")
        (print-dots (- x 1))))

(print-dots 9)