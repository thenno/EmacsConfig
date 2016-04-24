(defun my-flycheck-mode-hook ()
  (add-to-list 'load-path "~/.emacs.d/plugins/flycheck-virtualenv")
  (require 'flycheck-virtualenv)
  (setq flycheck-check-syntax-automatically '(mode-enabled save new-line))
  )

(add-hook 'flycheck-mode-hook 'my-flycheck-mode-hook)
(provide 'init-flycheck)
