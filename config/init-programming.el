(defun init-fill-column ()
  (setq whitespace-style '(face lines-tail tab-mark trailing))
  (setq whitespace-line-column 79)
  (whitespace-mode)
  )

(defun programming-mode ()
  (init-fill-column)
  (nlinum-mode t)
  )

(provide 'init-programming)
