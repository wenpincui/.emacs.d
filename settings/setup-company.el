(require 'company)

(add-hook 'after-init-hook 'global-company-mode)

(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)
     (define-key company-mode-map (kbd "C-,") 'company-complete-common)
     (define-key company-active-map (kbd "C-,") 'company-complete-common)))

(provide 'setup-company)

