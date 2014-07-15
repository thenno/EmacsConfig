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
  (require 'init-flycheck-pylint)
  (flycheck-mode t)
  (setq flycheck-pylintrc "~/.emacs.d/config/pylintrc")
  (flycheck-select-checker 'python-pylint)
  )

(defun init-fill-column ()
  (setq whitespace-style '(face lines-tail))
  (setq whitespace-line-column 79)
  (whitespace-mode)
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
  (global-set-key (kbd "C-c s") 'py-send-region-ipython)
  )

(defun init-braces ()
  (electric-pair-mode t)
  (show-paren-mode t)
  )

(defun init-ipython ()
  (require 'ipython)
  (setq python-python-command "ipython")
  (setq py-python-command-args '("--colors=linux"))
  (setq py-default-interpreter "ipython")
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
  (init-ipython)
  )

(add-hook 'python-mode-hook 'my-python-mode-hook)

(provide 'init-python)
