; thenno.el

(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(iswitchb-mode 1)

(global-set-key (kbd "RET") 'newline-and-indent)
(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-thenno)
