(require 'projectile)

(projectile-global-mode)

;; Specifies the indexing method used by Projectile.
(setq projectile-indexing-method 'native)

(setq projectile-completion-system 'helm)
(helm-projectile-on)

(provide 'setup-projectile)

