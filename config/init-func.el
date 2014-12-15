(defun shift-region (distance)
  (let ((mark (mark)))
    (save-excursion
      (indent-rigidly (region-beginning) (region-end) distance)
      (push-mark mark t t)
      (setq deactivate-mark nil))))
(defun shift-right ()
  (interactive)
  (shift-region 1))
(defun shift-left ()
  (interactive)
  (shift-region -1))

(provide 'init-func)
