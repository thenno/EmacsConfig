(defun init-rope () ; for refactoring
  (require 'pymacs)
  (pymacs-load "ropemacs" "rope-")
  (ropemacs-mode)
  (setq ropemacs-enable-autoimport t)
  (setq ropemacs-guess-project t)
  )

(defun init-autocomplite ()
  (auto-complete-mode t)
  (setq-default ac-sources '())
  (anaconda-mode t)
  (ac-anaconda-setup)
  (setq ac-auto-start t)
  (setq ac-show-menu-immediately-on-auto-complete t)
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

(defun init-bindings ()
  (global-set-key (kbd "C-c p") 'flycheck-list-errors)
  (global-set-key (kbd "C-c s") 'py-send-region-ipython)
  (global-set-key (kbd "C-c g") 'anaconda-mode-goto)
  )

(defun init-braces ()
  (electric-pair-mode t)
  (show-paren-mode t)
  )

(defun my-python-mode-hook ()
  (linum-mode)
  (init-fill-column)
  (init-autocomplite)
;  (init-rope)
  (init-bindings)
  (init-braces)
  (init-flycheck)
  )

(add-hook 'python-mode-hook 'my-python-mode-hook)

(provide 'init-python)
