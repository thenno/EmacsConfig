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
    jedi
    python-environment
    python-mode
    color-theme
    jabber
    magit
    magit-tramp
    flycheck
    anything-ipython
    ))
(dolist (pack my-packages)
  (unless (package-installed-p pack)
    (package-install pack)
    )
  )

(require 'init-flycheck)
(require 'init-python)
(require 'init-thenno)
;(require 'init-jabber)
(require 'init-ido)
