(require 'tramp)
(setq tramp-terminal-type "dumb")
(setq tramp-default-method "ssh")
(setq tramp-chunksize 100)

(provide 'init-tramp)
