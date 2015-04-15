(defun init-braces ()
  (electric-pair-mode t)
  (show-paren-mode t)
  )

(defun my-clojure-hook ()
  (require 'init-programming)
  (programming-mode)
  (init-braces)
  )

(add-hook 'clojure-mode-hook 'my-clojure-hook)

(provide 'init-clojure)
