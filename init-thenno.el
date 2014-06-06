; thenno.el

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(iswitchb-mode 1)

(global-set-key (kbd "RET") 'newline-and-indent)

(provide 'init-thenno)
