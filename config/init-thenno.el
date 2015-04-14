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
(setq hscroll-step 1)
(setq scroll-margin 5)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)

(setq scroll-conservatively 10000)
(setq scroll-preserve-screen-position 't)


(set-default 'indent-tabs-mode nil)

(provide 'init-thenno)
