(defun simple-equal (x y)
  (equal x y))

(format t "~A~%" (simple-equal 1 2))
(format t "~A~%" (simple-equal 1 1))

;;; 检查两个值相同的对象的时候返回T
(format t "~A~%" (eql (simple-equal 'a nil) (cons 'a nil)))

;;; eql检测相同对象的时候才会返回T
(defparameter x nil)
(setf x (cons 'a nil))
(format t "~A~%" (eql x x))

;;; 检测两个list参数是否相同
;;;
(defun equal-lst (x y)
  (or (eql x y) ;; 同一个对象，是同一个对象直接返回
      (and (consp x) (consp y) ;; 检测是否是cons对象
	   (simple-equal (car x) (car y)) ;; 检测第一个元素是否相同
	   (equal-lst (cdr x) (cdr y)) ;;; 递归调用
	   )))

(format t "~A~%" (equal-lst '(1 2) '(1 2)))
(format t "~A~%" (equal-lst '(1) '(1 2)))
