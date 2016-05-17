(add-to-list 'load-path "~/.emacs.d/plugins/pythonic")

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
  (global-set-key (kbd "C-c g") 'jedi:goto-definition)
  )

(defun init-virtualenv ()
  (require 'virtualenvwrapper)
  (venv-initialize-interactive-shells) ;; if you want interactive shell support
  (venv-initialize-eshell) ;; if you want eshell support
  (setq venv-location "~/.virtualenvs/")
  )

(defun my-python-mode-hook ()
  (require 'init-programming)
  (programming-mode)
  (init-company-with-jedi)
  (init-bindings)
  (init-flycheck)
  (init-virtualenv)
  )

(add-hook 'python-mode-hook 'my-python-mode-hook)

(provide 'init-python)
