(defun compress (x)
  (if (consp x) ;; check x cons obj
      (compr (car x) 1 (cdr x)) 
    x))

(defun compr (elt n lst)
  (if (null lst) 
      (list (n-elts elt n)) ;; if list is null, make a list 
    (let ((next (car lst))) ;; get the first element of the list
      (if (eql next elt) ;; if next equals the next
	  (compr elt (+ n 1) (cdr lst)) ;; check the next element
	(cons (n-elts elt n) ;; make a cons, and check the next element
	      (compr next 1 (cdr lst)))))))

(defun n-elts (elt n)
  (if (> n 1)
      (list n elt)
    elt))

(format t "~A~%" (compress '(1 1 1 0 1 1)))
(format t "~A~%" (compress '(1)))
