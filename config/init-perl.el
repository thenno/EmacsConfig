(add-to-list 'load-path "~/.emacs.d/plugins/cperl-mode")

(defalias 'perl-mode 'cperl-mode)

(defun indent-tabs ()
  (set-default 'indent-tabs-mode t)
  (setq-default tab-width 4)
  (setq cperl-indent-level 4)
  )

(defun init-face ()
  (setq cperl-highlight-variables-indiscriminately nil)
  (custom-set-faces
   '(cperl-array-face ((t ())))
   '(cperl-hash-face ((t ())))
   )
  )

(defun my-perl-mode-hook ()
  (require 'init-programming)
  (programming-mode)
  (indent-tabs)
  (init-face)
  )

(add-hook 'cperl-mode-hook 'my-perl-mode-hook)

(provide 'init-perl)
