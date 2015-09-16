(add-to-list 'load-path "~/.emacs.d/plugins/pythonic")
(pymacs-load "ropemacs" "rope-") ; hack for normal working

(defun init-rope () ; for refactoring
  (require 'pymacs)
  (ropemacs-mode t)
  (setq ropemacs-enable-autoimport t)
  (setq ropemacs-guess-project t)
  )

(defun init-company-with-jedi ()
  (require 'jedi)
  ; hack for normal working
  (setq jedi:install-server--command
    `("pip" "install",(convert-standard-filename jedi:source-dir)))
  (jedi:install-server)
  (add-to-list 'company-backends 'company-jedi)
  )

(defun init-flycheck () ; for code check
  (flycheck-mode t)
  (require 'init-flycheck)
  (setq flycheck-pylintrc "~/.emacs.d/config/pylintrc")
  (flycheck-select-checker 'python-pylint)
  )

(defun init-bindings ()
  (global-set-key (kbd "M-p p") 'flycheck-list-errors)
  (global-set-key (kbd "M-p u") 'anaconda-mode-usages)
  )

(defun my-python-mode-hook ()
  (require 'init-programming)
  (programming-mode)
  (init-rope)
  (init-company-with-jedi)
  (init-bindings)
  (init-flycheck)
  )

(add-hook 'python-mode-hook 'my-python-mode-hook)

(provide 'init-python)
