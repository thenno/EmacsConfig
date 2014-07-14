(defun init-rope () ; for refactoring
  (require 'pymacs)
  (pymacs-load "ropemacs" "rope-")
  (ropemacs-mode)
  (setq ropemacs-enable-autoimport t)
  (setq ropemacs-guess-project t)
  )

(defun init-autocomplite ()
  (auto-complete-mode t)
  (ac-ropemacs-initialize)
  (setq ropemacs-enable-autoimport t)
  (add-to-list 'ac-sources 'ac-source-ropemacs)
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
  (setq jedi:complete-on-dot t)
  (setq jedi:tooltip-method '(pos-tip))
  (jedi:ac-setup)
  (jedi-mode)
  )

(defun init-bindings ()
  (global-set-key (kbd "C-c p") 'flycheck-list-errors)
  )

(defun init-braces ()
  (electric-pair-mode t)
  (show-paren-mode t)
  )

(defun my-python-mode-hook ()
  (linum-mode)
  (init-fill-column)
  (init-rope)
;  (init-autocomplite)
  (init-jedi)
  (init-bindings)
  (init-braces)
  (init-flycheck)
  )

(add-hook 'python-mode-hook 'my-python-mode-hook)

(provide 'init-python)
