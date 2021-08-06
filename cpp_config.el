;; code completion
(req-package company
  :config
  (progn code completion
    (add-hook 'after-init-hook 'global-company-mode)
    (global-set-key (kbd "M-/") 'company-complete-common-or-cycle)
    (setq company-idle-delay 0)))

;; syntax checking
(req-package flycheck
  :config
  (progn
    (global-flycheck-mode)))
