(setq inhibit-startup-screen t)
(scroll-bar-mode -1)
(set-fringe-mode 10)
(setq visible-bell nil)
(menu-bar-mode 0)
(tool-bar-mode 0)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq default-tab-width 2)

(setq initial-scratch-message "
;;████████▄       ▄█    ▄████████     ███      ▄█  ███▄▄▄▄   
;;███   ▀███     ███   ███    ███ ▀█████████▄ ███  ███▀▀▀██▄ 
;;███    ███     ███   ███    ███    ▀███▀▀██ ███▌ ███   ███ 
;;███    ███     ███   ███    ███     ███   ▀ ███▌ ███   ███ 
;;███    ███     ███ ▀███████████     ███     ███▌ ███   ███ 
;;███    ███     ███   ███    ███     ███     ███  ███   ███ 
;;███   ▄███     ███   ███    ███     ███     ███  ███   ███ 
;;████████▀  █▄ ▄███   ███    █▀     ▄████▀   █▀    ▀█   █▀  
;; 						▀▀▀▀▀▀                                          
 
;;  ▄███████▄    ▄████████ ███▄▄▄▄   ████████▄     ▄████████ ▄██   ▄   
;; ███    ███   ███    ███ ███▀▀▀██▄ ███   ▀███   ███    ███ ███   ██▄ 
;; ███    ███   ███    ███ ███   ███ ███    ███   ███    █▀  ███▄▄▄███ 
;; ███    ███   ███    ███ ███   ███ ███    ███  ▄███▄▄▄     ▀▀▀▀▀▀███ 
;;█████████▀  ▀███████████ ███   ███ ███    ███ ▀▀███▀▀▀     ▄██   ███ 
;; ███          ███    ███ ███   ███ ███    ███   ███    █▄  ███   ███ 
;; ███          ███    ███ ███   ███ ███   ▄███   ███    ███ ███   ███ 
;;▄████▀        ███    █▀   ▀█   █▀  ████████▀    ██████████  ▀█████▀  

;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.
")

(set-frame-parameter (selected-frame) 'alpha '(95 70))
(add-to-list 'default-frame-alist '(alpha 95 70))
(setq create-lockfiles nil) 
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes '(misterioso))
 '(custom-safe-themes
   '("2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" default))
 '(org-agenda-files '("~/org/work.org"))
 '(org-fontify-done-headline t)
 '(package-selected-packages
   '(lsp-ui lsp-mode haskell-mode use-package org-bullets magit doom-modeline solarized-theme evil ##)))

(require 'ido)
(ido-mode t)
(require 'rust-mode)
(use-package lsp-mode
  :ensure
  :commands lsp
  :custom
  ;; what to use when checking on-save. "check" is default, I prefer clippy
  (lsp-rust-analyzer-cargo-watch-command "clippy")
  (lsp-eldoc-render-all t)
  (lsp-idle-delay 0.6)
  (lsp-rust-analyzer-server-display-inlay-hints t)
  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))

(use-package lsp-ui
  :ensure
  :commands lsp-ui-mod  :custom
  (lsp-ui-peek-always-show t)
  (lsp-ui-sideline-show-hover t)
  (lsp-ui-doc-enable nil))

(require 'haskell-mode)


;;(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(package-initialize)
;;(package-refresh-contents)

;(package-install 'use-package)
(require 'use-package)

(require 'doom-modeline)
(doom-modeline-mode 1)

;; Download Evil
;;(unless (package-installed-p 'evil)
;;	(package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)
(set-keyboard-coding-system nil)


;; customizing org mode

(setq org-agenda-files
      (list "~/org/task.org"))

(require 'org)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c d") 'org-deadline)

(setq org-log-done t)
;; hide the emphasis markup (e.g. /.../ for italics, *...* for bold, etc.)
(setq org-hide-emphasis-markers t)
;;set up a font-lock substitution for list markers
; use org-bullets-mode for utf8 symbols as org bullets
(require 'org-bullets)
;; make available "org-bullet-face" such that I can control the font size individually
(setq org-bullets-face-name (quote org-bullet-face))
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-bullets-bullet-list '("◉" "○" "✸" "✿" "●" "◇" "✚" "✜" "☯" "◆" "♠" "♣" "♦" "☢" "❀" "◆" "◖" "▶" ))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)


;; (require 'package)
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; (package-initialize)
;; (package-refresh-contents)

;; (package-install 'use-package)		;
