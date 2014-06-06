(defun init-rope ()
  (require 'pymacs)
  (pymacs-load "ropemacs" "rope-")
  (ropemacs-mode)
  (setq ropemacs-enable-autoimport t)
  (setq ropemacs-confirm-saving nil)
  (cond ((file-exists-p ".ropeproject")
	 (rope-open-project default-directory))
	((file-exists-p "../.ropeproject")
	 (rope-open-project (concat default-directory "..")))))

(defun init-jedi ()
  (auto-complete-mode)
  (jedi:ac-setup))

(defun my-python-mode-hook ()
  (init-rope)
  (auto-complete-mode)
  (jedi:ac-setup))

(add-hook 'python-mode-hook 'my-python-mode-hook)
	     
(provide 'init-python)
