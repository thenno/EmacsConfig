(defun indent-tabs ()
  (set-default 'indent-tabs-mode t)
  (setq-default tab-width 4)
  )

(defun my-perl-mode-hook ()
  (require 'init-programming)
  (programming-mode)
  (indent-tabs)
  )

(add-hook 'perl-mode-hook 'my-perl-mode-hook)

(provide 'init-perl)
