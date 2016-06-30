(add-hook 'typescript-mode-hook
          (lambda ()
            (add-to-list 'compilation-error-regexp-alist
                         '("^\\([_.[:alnum:]-/]*.ts\\)(\\([[:digit:]]+\\),\\([[:digit:]]+\\)).*$"    1 2 3))))

;; (eval-after-load 'compile
;;   (add-to-list 'compilation-error-regexp-alist
;;                '("^\\([^(\n]+\\)(\\([0-9]+\\),\\([0-9]+\\)):" 1 2 3)))

(provide 'setup-typescript)
