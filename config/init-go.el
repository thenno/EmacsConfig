(defun my-go-mode-hook ()
  (require 'init-programming)
  (programming-mode)
  (setq tab-width 4)
  )

(add-hook 'go-mode-hook 'my-go-mode-hook)

(provide 'init-go)
