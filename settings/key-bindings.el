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

;; bing dict
(global-set-key (kbd "C-c d") 'bing-dict-brief)

;; expand region
(global-set-key (kbd "C-=") 'er/expand-region)


(define-key global-map (kbd "C-c l") 'org-store-link)
(define-key global-map (kbd "C-c a") 'org-agenda)
(define-key global-map (kbd "C-c c") 'org-capture)


(provide 'key-bindings)
