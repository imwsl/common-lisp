(load "./print.lisp")

(printx (mapcar #' (lambda (x) (+ x 10))
    '(1 2 3)))

(printx (maplist #' (lambda (x) x)
    '(a b c d)))

(defun len (lst)
    (if (null lst)
        0
        (+ 1 (len (cdr lst)))))

(printx (len '(1 2 3 4 5 6 7)))
