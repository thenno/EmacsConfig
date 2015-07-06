(defun my-flycheck-mode-hook ()
  (setq flycheck-check-syntax-automatically '(mode-enabled save new-line))
  )

(add-hook 'flycheck-mode-hook 'my-flycheck-mode-hook)
(provide 'init-flycheck)
