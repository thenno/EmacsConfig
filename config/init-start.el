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
(menu-bar-mode -1)
(when (string= system-name "thenno-workbook")
    (scroll-bar-mode -1)
    (tool-bar-mode -1))

; company-mode settings
(custom-set-faces
 '(ggtags-highlight ((t nil)))
 `(company-scrollbar-bg
   ((t (:background "lightgray"))))
 `(company-scrollbar-fg
   ((t (:background "#5f5f5f"))))
 '(company-preview
   ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common
   ((t (:inherit company-preview))))
 '(company-tooltip
   ((t (:background "lightgray" :foreground "black"))))
 '(company-tooltip-selection
   ((t (:background "#5f5f5f" :foreground "white"))))
 '(company-tooltip-common
   ((((type x)) (:inherit company-tooltip :weight bold))
    (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection
   ((((type x)) (:inherit company-tooltip-selection :weight bold))
    (t (:inherit company-tooltip-selection)))))

; custom settings
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
