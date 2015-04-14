(defun init-fill-column ()
  (setq whitespace-style '(face lines-tail trailing))
  (setq whitespace-line-column 79)
  (whitespace-mode)
  )

(defun my-perl-mode-hook ()
  (init-fill-column)
  (linum-mode t)
  )

(add-hook 'perl-mode-hook 'my-perl-mode-hook)

(provide 'init-perl)
