;;; use a better perl mode
(setq auto-mode-alist
      (cons '("\\.\\([pP][Llm]\\|al\\|t\\)\\'" . cperl-mode)
            auto-mode-alist ) )

(add-hook 'cperl-mode-hook
          (lambda ()
            (set (make-local-variable 'compile-command)
                 (format "perl %s" (buffer-file-name)))))

(provide 'setup-perl)
