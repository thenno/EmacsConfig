; thenno.el

(setq auto-save-default nil)

(savehist-mode t)
(setq savehist-additional-variables '(kill-ring search-ring regexp-search-ring))

(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(iswitchb-mode 1)

(setq temporary-file-directory "~/.emacs.d/temp/")

(global-set-key (kbd "RET") 'newline-and-indent)
(fset 'yes-or-no-p 'y-or-n-p)

(setq scroll-step 1)

(setq indent-tab-mode nil)

(provide 'init-thenno)
