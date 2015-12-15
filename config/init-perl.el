(add-to-list 'load-path "~/.emacs.d/plugins/cperl-mode")

(defalias 'perl-mode 'cperl-mode)

(defun indent-tabs ()
  (setq-default tab-width 4)
  (setq cperl-indent-level 4)
  (setq cperl-indent-parens-as-block t)
  )

(defun init-face ()
  (setq cperl-highlight-variables-indiscriminately nil)
  (custom-set-faces
   '(cperl-array-face ((t ())))
   '(cperl-hash-face ((t ())))
   )
  )

(defun init-complete ()
  (ggtags-mode)
  (setq company-backend 'company-capf)
  )

(defun my-perl-mode-hook ()
  (require 'init-programming)
  (programming-mode)
  (flycheck-mode 1)
  (indent-tabs)
  (init-face)
  (init-complete)
  )

(add-hook 'cperl-mode-hook 'my-perl-mode-hook)

(provide 'init-perl)
