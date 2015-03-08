; thenno.el

(setq auto-save-default nil)

(require 'redo+)

(savehist-mode t)
(setq savehist-additional-variables '(kill-ring
				      search-ring
				      regexp-search-ring
				      compile-command))

(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(iswitchb-mode 1)

(setq temporary-file-directory "~/.emacs.d/temp/")

(fset 'yes-or-no-p 'y-or-n-p)

(setq scroll-step 1)

(set-default 'indent-tabs-mode nil)

(provide 'init-thenno)
