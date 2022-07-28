(defun summit (lst)
  ;;(remove nil lst)
  (apply #' + (remove nil lst)))

(format t "~A~%" (summit '(1 2 nil 3)))

