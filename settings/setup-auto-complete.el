(require 'auto-complete-config)

(ac-config-default)
(global-auto-complete-mode)
(ac-set-trigger-key "TAB")

(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode))

(provide 'setup-auto-complete)
