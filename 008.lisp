;;
;;(defun show-squares (start end)
;;(do ((i start (+ i 1)))
;;((> i end) 'done)
;;(format t "~A ~A~%" i (* i i))))
;;
;; 迭代版本
(defun show-squares (start end)
    (do ((i start (+ i 1)))
        ((> i end) 'Done)
        (format t "迭代版: ~A * ~A = ~A~%" i i (* i i))))

(show-squares 0 9)

;; 递归版本
(defun show-squares2 (start end)
    (format t "递归版: ~A * ~A = ~A~%" start start (* start start))
    (if (> start end)
        'Done
        (show-squares (+ start 1) end)))

(show-squares2 0 9)