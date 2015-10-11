(require 'org)
;; load htmlize.el , which org-babel export syntax highlight source code need it
(require 'htmlize)

(setq org-log-done 'time)

(setq org-agenda-files '("~/org/agenda.org"))

(setq org-src-fontify-natively t)
;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((C . t)
   (emacs-lisp . t)
   (sh . t)
   (perl . t)
   (python .t)
   (java . t)
   (lisp . t)
   ))

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!/!)")
              (sequence "PROJECT(p)" "|" "DONE(d!/!)" "CANCELLED(c@/!)")
              (sequence "WAITING(w@/!)" "HOLD(h)" "|" "CANCELLED(c@/!)"))))
