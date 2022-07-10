;;
;; 找到列表里面的list
(defun find-list (x)
    ;; 判断是否为空
    (if (null x)
        "Error Parameters...."
        ;; 判断是否是列表
        (if (not (listp x))
            "Not list..."
            (if (listp (car x))
                (car x)
                (find-list (cdr x))))))

(format t "~A~%" 
    (find-list '(1 2 3 (4 5 6))))

(format t "~A~%" 
    (find-list 1))