(defun my-markdown-mode-hook ()
  (require 'init-flyspell)
  )

(add-hook 'markdown-mode-hook 'my-markdown-mode-hook)

(provide 'init-markdown)
