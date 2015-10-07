(defun my-ggtags-mode-hook ()
  (custom-set-faces
   '(ggtags-highlight ((t nil))))
  )

(add-hook 'ggtags-mode 'my-ggtags-mode-hook)

(provide 'init-ggtags)
