; init-first.el

; fullscreen
(setq inhibit-splash-screen t)
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

; theme settings
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/tomorrow-night-paradise-theme")
(set-default-font "Ubuntu Mono 14")
(load-theme 'tomorrow-night-paradise t)

; dicable bars
;(tool-bar-mode -1)
(menu-bar-mode -1)
;(scroll-bar-mode -1)

(custom-set-variables
 '(ansi-term-color-vector [unspecified "#000000" "#d54e53" "#afd75f" "#e7c547" "#5f87d7" "#af87d7" "#5f87d7" "#dadada"])
 '(custom-safe-themes (quote ("4aafea32abe07a9658d20aadcae066e9c7a53f8e3dfbd18d8fa0b26c24f9082c" default)))
 '(fci-rule-character-color "#1c1c1c")
 '(fci-rule-color "#1c1c1c")
 '(ido-enable-tramp-completion nil)
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
(custom-set-faces
 )

(provide 'init-start)
