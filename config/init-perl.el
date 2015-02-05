(setq auto-mode-alist (rassq-delete-all 'perl-mode auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.\\(p\\([lm]\\)\\)\\'" . cperl-mode))

(setq interpreter-mode-alist (rassq-delete-all 'perl-mode interpreter-mode-alist))
(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))

(defun init-fill-column ()
  (setq whitespace-style '(face lines-tail trailing))
  (setq whitespace-line-column 79)
  (whitespace-mode)
  )

(defun my-perl-mode-hook ()
  (init-fill-column)
  )

(add-hook 'cperl-mode-hook 'my-perl-mode-hook)

(provide 'init-perl)
