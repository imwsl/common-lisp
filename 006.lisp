(format t "~A~%"
    (cdr '(a (b c) d)))

(format t "~A~%"
    (list (cdr '(a (b c) d))))

(format t "~A~%"
    (car (car (cdr '(a (b c) d)))))

(format t "~A~%"
    (or 13 (/ 1 0)))

(format t "~A~%"
    (funcall #'list 1 nil))