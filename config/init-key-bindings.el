(global-set-key (kbd "C-x g") 'goto-line)

(global-set-key "\C-s" 'isearch-forward-regexp)
(global-set-key "\C-r" 'isearch-backward-regexp)
(global-set-key "\C-\M-r" 'replace-regexp)

(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "M-k") 'kill-region)

(global-set-key (kbd "C-h") 'backward-delete-char)

(global-set-key (kbd "C-x h") 'help-command)

(global-set-key (kbd "C-u") 'undo-only)
(global-set-key (kbd "M-u") 'redo)

(global-set-key (kbd "C-c C-u") 'upcase-word)
(global-set-key (kbd "C-c C-l") 'downcase-word)

(global-set-key (kbd "C-c o") 'occur)
(global-set-key (kbd "C-c f n") 'flycheck-next-error)
(global-set-key (kbd "C-c f n") 'flycheck-previous-error)

(global-set-key (kbd "<C-return>") (lambda () (interactive) (progn (move-end-of-line 1) (newline-and-indent))))

(global-set-key (kbd "M-p o") 'sr-speedbar-open)
(global-set-key (kbd "M-p c") 'sr-speedbar-toggle)

(global-set-key (kbd "C-j") 'delete-indentation)
(global-set-key (kbd "RET") 'newline-and-indent)

(provide 'init-key-bindings)
