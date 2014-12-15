(defun init-braces ()
  (electric-pair-mode t)
  (show-paren-mode t)
  )

(defun my-clojure-hook ()
  (linum-mode)
  (init-braces)
  )

(add-hook 'clojure-mode-hook 'my-clojure-hook)

(provide 'init-clojure)
