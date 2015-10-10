(load (expand-file-name "~/.roswell/impls/ALL/ALL/quicklisp/slime-helper.el"))
  ;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "ros run")

(add-hook 'slime-repl-mode-hook
          (lambda ()
            (paredit-mode 1)))

(provide 'setup-slime)
