(load (expand-file-name "~/.roswell/impls/ALL/ALL/quicklisp/slime-helper.el"))
  ;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "ros run")

(add-hook 'slime-repl-mode-hook
          (lambda ()
            (paredit-mode 1)))

(eval-after-load 'slime-repl
  '(progn
    (define-key slime-repl-mode-map (kbd "C-c l")
      'slime-documentation)
    (define-key slime-mode-map (kbd "C-c l")
      'slime-documentation)))

(provide 'setup-slime)
