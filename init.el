; init.el
(add-to-list 'load-path "~/.emacs.d/")

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)
;(package-refresh-contents)
(setq my-packages
      '(
	jedi
	python-environment
      ))
(dolist (pack my-packages)
  (unless (package-installed-p pack)
    (package-install pack)))

(require 'init-thenno)
(require 'init-python)
