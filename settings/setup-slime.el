(let ((file (expand-file-name "~/.roswell/impls/ALL/ALL/quicklisp/slime-helper.el")))
  (and (file-exists-p file) (load file)))

  ;; Replace "sbcl" with the path to your implementation
(if (executable-find "ros")
    (setq inferior-lisp-program "ros run")
  (setq inferior-lisp-program "lisp"))

(add-hook 'slime-repl-mode-hook
          (lambda ()
            (paredit-mode 1)))

(eval-after-load 'slime-repl
  '(progn
    (define-key slime-repl-mode-map (kbd "C-c l")
      'slime-documentation)
    (define-key slime-mode-map (kbd "C-c l")
      'slime-documentation)))

(slime-setup '(slime-company))

(provide 'setup-slime)
