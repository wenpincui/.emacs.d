(require 'gradle-mode)
(require 's)

(add-hook 'groovy-mode-hook
          (lambda ()
            (when (s-ends-with-p ".gradle" (buffer-file-name))
              (gradle-mode 1))))

(provide 'setup-gradle-mode)
