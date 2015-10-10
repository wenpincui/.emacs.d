;; Magit
(global-set-key (kbd "C-x m") 'magit-status-fullscreen)
(autoload 'magit-status-fullscreen "magit")

;; Marker
(global-set-key (kbd "C-.") 'set-mark-command)

;; ace jump mode
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(global-set-key (kbd "C-c h o") 'helm-occur)

(provide 'key-bindings)
