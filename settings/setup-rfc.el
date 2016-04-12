(require 'rfcview)
(setq auto-mode-alist
      (cons '("/rfc[0-9]+\\.txt\\(\\.gz\\)?\\'" . rfcview-mode)
            auto-mode-alist))
(autoload 'rfcview-mode "rfcview" nil t)

(require 'get-rfc)
(if is-mac (setq get-rfc-no-wget t)) ;;MAC OS-X does NOT have wget

(provide 'setup-rfc)
