;; Turn off mouse interface early in startup to avoid momentary display

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen
(setq inhibit-startup-message t)

;; keep custom settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(if (file-exists-p custom-file)
    (load custom-file))

;; are we mac os?
(setq *is-mac* (equal system-type 'darwin))

;; setup load path
(let ((settings-dir (expand-file-name "settings" user-emacs-directory))
      (site-lisp-dir (expand-file-name "site-lisp" user-emacs-directory)))
  (add-to-list 'load-path settings-dir)
  (add-to-list 'load-path site-lisp-dir))

(require 'appearance)

;; setup package manager
(require 'setup-package)

(defun init-install-packages ()
  (packages-install
   '(magit
     paredit
     fill-column-indicator
     flycheck
     dired-details
     yasnippet
     smartparens
     restclient
     dockerfile-mode
     dash
     undo-tree
     smooth-scrolling
     ace-jump-mode
     auto-complete
     ac-slime
     helm
     projectile
     helm-projectile
     bing-dict
     )))

(condition-case nil
    (init-install-packages)
  (error
   (package-refresh-contents)
   (init-install-packages)))

(when *is-mac*
  (require-package 'exec-path-from-shell)
  (exec-path-from-shell-initialize))

(require 'sane-defaults)
(require 'setup-slime)
(require 'setup-paredit)
(require 'setup-auto-complete)
(require 'setup-projectile)
(require 'setup-helm)

(eval-after-load 'dash '(dash-enable-font-lock))
(eval-after-load 'magit '(require 'setup-magit))

(require 'bing-dict)

(require 'key-bindings)

;; Misc
(when *is-mac* (require 'mac))
