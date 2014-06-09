; thenno.el

(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(iswitchb-mode 1)

(global-set-key (kbd "RET") 'newline-and-indent)
(fset 'yes-or-no-p 'y-or-n-p)

(setq scroll-step 1)

(setq indent-tab-mode nil)

; tramp
(setq tramp-default-method "ssh")

(provide 'init-thenno)
