(defun init-rope () ; for refactoring
  (require 'pymacs)
  (pymacs-load "ropemacs" "rope-")
  (ropemacs-mode)
  (setq ropemacs-enable-autoimport t)
  (setq ropemacs-guess-project t)
  )

(defun init-jedi () ; for autocomplition
  (auto-complete-mode)
  (jedi:ac-setup)
  (jedi-mode)
  )

(defun init-bindings ()
  (global-set-key (kbd "C-c p l") 'python-pylint)
  (global-set-key (kbd "C-c p 8") 'python-pep8)
  )

(defun my-python-mode-hook ()
  (linum-mode)
  (init-rope)
  (init-jedi)
  (init-bindings)
  (flycheck-mode t)
  )

(add-hook 'python-mode-hook 'my-python-mode-hook)

(provide 'init-python)
