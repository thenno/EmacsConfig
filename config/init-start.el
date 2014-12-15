; init-first.el

; fullscreen
(setq inhibit-splash-screen t)
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

; theme settings
;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(set-default-font "Ubuntu Mono 14")
(load-theme 'wombat t)

; dicable bars
(tool-bar-mode -1)
; (menu-bar-mode -1)
(scroll-bar-mode -1)

(provide 'init-start)
