(defun init-fill-column ()
  (setq whitespace-style '(face lines-tail tabs tab-mark trailing))
  (setq whitespace-line-column 79)
  (whitespace-mode)
  )

(defun programming-mode ()
  (init-fill-column)
  )

(provide 'init-programming)
