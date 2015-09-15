; init.el

(add-to-list 'load-path "~/.emacs.d/")
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
        color-theme
        sublime-themes
        markdown-mode
        pymacs
        anaconda-mode
        clojure-mode
        company-anaconda
        flycheck
        idomenu
        magit
        magit-tramp
        mode-compile
        rainbow-delimiters
        redo+
        sr-speedbar
        yaml-mode
        sbt-mode
        ensime
        yasnippet
        pde
        ag
        git-gutter
    ))
(el-get 'sync my-el-get-packages)

(require 'init-flycheck)
(require 'init-python)
(require 'init-clojure)
(require 'init-thenno)
(require 'init-ido)
(require 'init-tramp)
(require 'init-key-bindings)
(require 'init-markdown)
(require 'mrproc-mode)
(require 'init-perl)
(require 'init-scala)
(require 'init-magit)
(require 'init-yasnippet)
(require 'init-gitgutter)
