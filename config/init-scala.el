(defun my-scala-mode-hook ()
  (linum-mode)
  (auto-complete-mode 0)
  (setq ensime-sem-high-enabled-p nil)
  )

(add-hook 'scala-mode-hook 'my-scala-mode-hook)

(provide 'init-scala)
