(defun compress (lst)
  (if (consp lst)
      (compr (car lst) 1 (cdr lst))
    (cons lst nil)))

(defun compr (elt n lst)
  (if (null lst)
      (list (make-lst elt n))
    (let ((x (car lst)))
      (if (eql x elt)
	  (compr elt (+ n 1) (cdr lst))
	(cons (make-lst elt n)
	      (compr x 1 (cdr lst)))
	  )
      ))
  )

(defun make-lst (elt n)
  (list n elt)
  )

(format t "~A~%" (compress '(1 1 0 1 1 1 1 0 0 0 0 1)))

(defun cons-lst (n)
  (if (> n 1)
      (cons n (cons-lst (- n 1)))
    (list n)))

(format t "~A~%" (cons-lst 9))

;;; uncompress
(defun list-of (n elt)
  (if (zerop n)
      nil
    (cons elt (list-of (- n 1) elt))))

(defun uncompress (lst)
  (if (null lst)
      nil
    (let ((elt (car lst))
	  (rest (uncompress (cdr lst))))
    (if (consp elt)
      (append (apply #'list-of elt)
        rest)
        (cons elt rest)))))

;;;(format t "~A~%" (uncompress '((3 1) (4 0))))

;;; append function
;;;(format t "~A~%" (append '(9 11) nil))

;;; decompress
(defun decompress (lst)
  (if (null lst)
    nil
    (unzip (car lst) (cdr lst)))
  )

(defun unzip (next lst)
  (let ((x next) (rest (decompress lst)))
    (if (consp x)
      (append (apply #' list-of x) rest)
      (cons x rest))
    )
  )

(format t "~A~%" (decompress '((2 1) (3 0) (4 2))))



