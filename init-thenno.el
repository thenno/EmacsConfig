; thenno.el

(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(load-theme 'solarized-dark t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(iswitchb-mode 1)

(global-set-key (kbd "RET") 'newline-and-indent)

(provide 'init-thenno)
