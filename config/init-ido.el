(require 'ido)

(ido-mode t)

(ido-mode 'both)

(setq ido-ignore-buffers '("\\` " "^\*Mess" "^\*Back" ".*Completion" "^\*Ido" "^\*trace" "^\*compilation" "^\*GTAGS" "^session\.*" "^\*inferior-ensime-\.*")
      ido-enable-last-directory-history t
      )

(custom-set-variables
 '(ido-enable-tramp-completion nil))

(provide 'init-ido)
