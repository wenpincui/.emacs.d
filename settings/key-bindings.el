;; Magit
(global-set-key (kbd "C-x m") 'magit-status-fullscreen)
(autoload 'magit-status-fullscreen "magit")

;; Marker
(global-set-key (kbd "C-.") 'set-mark-command)

;; ace jump mode
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(provide 'key-bindings)
