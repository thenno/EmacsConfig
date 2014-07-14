(require 'ido)

(ido-mode 'both)

(setq ido-ignore-buffers '("\\` " "^\*Mess" "^\*Back" ".*Completion" "^\*Ido" "^\*trace" "^\*compilation" "^\*GTAGS" "^session\.*" "^\*")
      ido-enable-last-directory-history t
      )

(provide 'init-ido)
