; thenno.el

(setq auto-save-default nil)
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(iswitchb-mode 1)

(global-set-key (kbd "RET") 'newline-and-indent)
(fset 'yes-or-no-p 'y-or-n-p)

(setq scroll-step 1)

(setq indent-tab-mode nil)

; tramp
(require 'tramp)
(setq tramp-terminal-type "dumb")
(setq tramp-default-method "ssh")
(setq tramp-chunksize 100)

; ido-mode
(ido-mode t)

(provide 'init-thenno)
