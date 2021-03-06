; init.el

(when (version< emacs-version "24.4") (add-to-list 'load-path "~/.emacs.d/"))
(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "~/.emacs.d/plugins")

(require 'init-start)

(require 'package)
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
    (with-current-buffer
          (url-retrieve-synchronously
               "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
          (let (el-get-master-branch)
                (goto-char (point-max))
                  (eval-print-last-sexp))))
(el-get 'sync)

; EL-GET installing
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)
(setq my-el-get-packages
      '(
        jedi
        company-jedi
        markdown-mode
        clojure-mode
        flycheck
        idomenu
        mode-compile
        rainbow-delimiters
        redo+
        sr-speedbar
        yaml-mode
        sbt-mode
        ensime
        pde
        ag
        git-gutter
        ggtags
        virtualenvwrapper
        dockerfile-mode
        haskell-mode
    ))
(el-get 'sync my-el-get-packages)

(require 'mrproc-mode)
(require 'init-flycheck)
(require 'init-python)
(require 'init-clojure)
(require 'init-thenno)
(require 'init-ido)
(require 'init-tramp)
(require 'init-markdown)
(require 'init-perl)
(require 'init-scala)
(require 'init-gitgutter)
(require 'init-key-bindings)
