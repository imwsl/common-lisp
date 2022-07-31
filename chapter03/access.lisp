(load "./print.lisp")

(printx (nth 0 '(a b c)))
(printx (nthcdr 2 '(a b c d)))

(defun our-nth (n lst)
    (if (null lst)
        nil
        (if (zerop n)
            (car lst)
            (our-nth (- n 1) (cdr lst)))))

(printx (our-nth 1 '(a b c)))
(printx (our-nth 2 '(a b c)))
(printx (our-nth 3 '(a b c)))

(defun our-nthcdr (n lst)
    (if (null lst)
        nil
        (if (zerop n)
            lst
            (our-nthcdr (- n 1) (cdr lst)))))

(printx (our-nthcdr 0 '(a b c)))
(printx (our-nthcdr 1 '(a b c)))
(printx (our-nthcdr 2 '(a b c)))
(printx (our-nthcdr 3 '(a b c)))

(printx (last '(a b c)))
