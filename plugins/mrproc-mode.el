(defvar mrproc-keywords-regexp
  (regexp-opt '("map" "reduce" "sort" "read" "write" "publish" "format")
              'symbols))

(defvar mrproc-builtins-regexp
  (regexp-opt '("range")
              'symbols))

(setq mrproc-font-lock-keywords
      `(
        (,mrproc-builtins-regexp . font-lock-builtin-face)
        (,"\\(\\$\\(?:::\\)?\\(?:[[:alnum:]_]+::\\)*[[:alnum:]_]+\\)" 1 font-lock-variable-name-face) ; $variable
        (,"\\(\\$\\)" 1 font-lock-variable-name-face)
        (,"[[:space:]]\\(-\\([[:word:]]+_?\\)+\\)" 1 font-lock-keyword-face)
        (,"^\\(\\([[:word:]]+_?\\)+ = \\)" 1 font-lock-variable-name-face)
        (,mrproc-keywords-regexp . font-lock-keyword-face)))

(defvar mrproc-syntax-table nil "Syntax table for mrproc-mode")
(setq mrproc-syntax-table
      (let ((table (make-syntax-table)))
        (modify-syntax-entry ?# "< b" table)
        (modify-syntax-entry ?\n "> b" table)
        table))

(defun mrproc-comment-dwim (arg)
  "Comment or uncomment line"
  (interactive "*P")
  (require 'newcomment)
  (let ((comment-start "#")
        (comment-end ""))
    (comment-dwim arg)))

(define-derived-mode mrproc-mode fundamental-mode
  "mrproc mode"
  "Major mode for editing MrProc scripts"

  :syntax-table mrproc-syntax-table

  (setq font-lock-defaults '((mrproc-font-lock-keywords)))

  (setq mrproc-keywords-regexp nil)
  (setq mrproc-builtins-regexp nil)

  (define-key mrproc-mode-map [remap comment-dwim] 'mrproc-comment-dwim))

(add-to-list 'auto-mode-alist '("job$" . mrproc-mode))

(provide 'mrproc-mode)
