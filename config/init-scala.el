(add-to-list 'load-path "~/.emacs.d/plugins/scala-mode2")

(defun my-scala-mode-hook ()
  (require 'init-programming)
  (require 'scala-mode2)
  (programming-mode)
  (setq ensime-sem-high-enabled-p nil)
  )

(add-hook 'scala-mode-hook 'my-scala-mode-hook)

(provide 'init-scala)
