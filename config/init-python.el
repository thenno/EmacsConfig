(defun init-rope () ; for refactoring
  (require 'pymacs)
  (pymacs-load "ropemacs" "rope-")
  (ropemacs-mode)
  (setq ropemacs-enable-autoimport t)
  (setq ropemacs-guess-project t)
  )

(defun init-autocomplite ()
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

(defun init-fill-column ()
  (setq whitespace-style '(face lines-tail tab-mark trailing))
  (setq whitespace-line-column 79)
  (whitespace-mode)
  )

(defun init-bindings ()
  (global-set-key (kbd "C-c p") 'flycheck-list-errors)
  (global-set-key (kbd "C-c s") 'py-send-region-ipython)
  (global-set-key (kbd "C-c g") 'anaconda-mode-goto)
  )

(defun my-python-mode-hook ()
  (linum-mode)
  (init-rope)
  (init-fill-column)
  (init-autocomplite)
  (init-bindings)
  (init-flycheck)
  )

(add-hook 'python-mode-hook 'my-python-mode-hook)

(provide 'init-python)
