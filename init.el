; init.el

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/config")

(require 'init-start)

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
             )
      )

(package-initialize)
;(package-refresh-contents)
(setq my-packages
      '(
        python-mode
        pymacs
        color-theme
        jabber
        markdown-mode
        magit
        magit-tramp
        flycheck
        anaconda-mode
        ac-anaconda
        clojure-mode
        rainbow-delimiters
        projectile
        sr-speedbar
        idomenu
        redo+
        emerge
        yaml-mode
    ))
(dolist (pack my-packages)
  (unless (package-installed-p pack)
    (package-install pack)
    )
  )

(require 'init-func)
(require 'init-flycheck)
(require 'init-python)
(require 'init-clojure)
(require 'init-thenno)
;(require 'init-jabber)
(require 'init-ido)
(require 'init-tramp)
(require 'init-key-bindings)
(require 'init-markdown)
