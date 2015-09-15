(add-to-list 'load-path "~/.emacs.d/plugins/pythonic")

(defun init-rope () ; for refactoring
  (require 'pymacs)
  (pymacs-load "ropemacs" "rope-")
  (ropemacs-mode)
  (setq ropemacs-enable-autoimport t)
  (setq ropemacs-guess-project t)
  )

(defun init-company-with-anaconda ()
  (anaconda-mode t)
  (company-mode t)
  (add-to-list 'company-backends 'company-anaconda)
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
  (auto-complete-mode 0)
  (init-rope)
  (init-company-with-anaconda)
  (init-bindings)
  (init-flycheck)
  )

(add-hook 'python-mode-hook 'my-python-mode-hook)

(provide 'init-python)
