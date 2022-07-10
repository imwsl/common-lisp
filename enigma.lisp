;;
;; 递归返回

(defun enigma (x)
  (print x)
  (and (not (null x))
       (or (null (car x))
	   (enigma (cdr x)))))

(enigma '(1 2 3 4 5 6))

(format t "AND: ~A~%" (and 1 2 nil 4))
(format t "OR: ~A~%" (or (null (car '(1 2 3 4)))))

(defun enigma2 (x)
  (print x)
  ;; x为真的 null为Nil not则为T and表达式则执行后面的
  ;; x为假的 null为T not则为Nil and表达式则不执行后面的
  (and (not (null x))
       ;; （car x)为Nil null为T or表达式则不继续执行
       ;; (car x)为T null则为Nil or表达式则继续执行
       (or (null (car x))
	   (enigma2 (cdr x)))))

(enigma2 '(5 6 7 8 9))

;; 改写
(defun enigma3 (x)
  (print x)
  (and (not (null x))
       (and (not (null (car x)))
	    (enigma3 (cdr x)))))

(enigma3 '(11 12 22 34 35))
