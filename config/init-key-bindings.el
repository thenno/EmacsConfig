(global-set-key (kbd "C-x g") 'goto-line)
(global-set-key "\C-s" 'isearch-forward-regexp)
(global-set-key "\C-r" 'isearch-backward-regexp)
(global-set-key "\C-\M-r" 'replace-regexp)
(global-set-key "\M-n" (lambda () (interactive) (progn (move-end-of-line 1) (newline-and-indent))))

(provide 'init-key-bindings)
