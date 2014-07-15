(flycheck-def-config-file-var flycheck-pylintrc python-pylint
                              ".pylintrc"
  :safe #'stringp)

(flycheck-define-checker python-pylint
  "A Python syntax and style checker using Pylint.

This syntax checker requires Pylint 1.0 or newer.

See URL `http://www.pylint.org/'."
  ;; -r n disables the scoring report
  :command ("pylint" "-r" "n"
            "--msg-template" "{path}:{line}:{column}:{C}:{msg} ({msg_id})"
            (config-file "--rcfile=" flycheck-pylintrc)
            ;; Need `source-inplace' for relative imports (e.g. `from .foo
            ;; import bar'), see https://github.com/flycheck/flycheck/issues/280
            source)
  :error-patterns
  ((error line-start (file-name) ":" line ":" column ":"
          (or "E" "F") ":" (message) line-end)
   (warning line-start (file-name) ":" line ":" column ":"
            (or "W" "R") ":" (message) line-end)
   (info line-start (file-name) ":" line ":" column ":"
         "C:" (message) line-end))
  :modes python-mode)

(provide 'init-flycheck-pylint)
