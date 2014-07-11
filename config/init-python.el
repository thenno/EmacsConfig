(defun init-rope () ; for refactoring
  (require 'pymacs)
  (pymacs-load "ropemacs" "rope-")
  (ropemacs-mode)
  (setq ropemacs-enable-autoimport t)
  (setq ropemacs-guess-project t)
  )

(defun init-flycheck () ; for code check
  (flycheck-mode t)
  (setq flycheck-pylintrc "~/.emacs.d/config/pylintrc")
  (flycheck-select-checker 'python-pylint)
  )

(defun init-fill-column ()
  (fci-mode t)
  (setq fci-rule-column 79)
  )

(defun init-jedi () ; for autocomplition
  (jedi:setup)
  (auto-complete-mode)
  (setq jedi:complete-on-dot t)
  (jedi:ac-setup)
  (jedi-mode)
  )

(defun init-bindings ()
  (global-set-key (kbd "C-c p l") 'python-pylint)
  (global-set-key (kbd "C-c p 8") 'python-pep8)
  )

(defun my-python-mode-hook ()
  (linum-mode)
  (init-fill-column)
  (init-rope)
  (init-jedi)
  (init-bindings)
  (init-flycheck)
  )

(add-hook 'python-mode-hook 'my-python-mode-hook)

(provide 'init-python)
