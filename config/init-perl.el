(defun indent-tabs ()
  (set-default 'indent-tabs-mode t)
  (setq-default tab-width 4)
  (setq cperl-indent-level 4)
  )

(defun init-autocomplite ()
  (auto-complete-mode 0)
  (company-mode t)
  )

(defun my-perl-mode-hook ()
  (require 'init-programming)
  (programming-mode)
  (indent-tabs)
  (init-autocomplite)
  )

(add-hook 'perl-mode-hook 'my-perl-mode-hook)

(provide 'init-perl)
