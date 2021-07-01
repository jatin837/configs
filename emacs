(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq default-tab-width 2)
(custom-set-variables
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes '(wheatgrass))
 '(package-selected-packages '(evil ##)))
(custom-set-faces)

(require 'ido)
(ido-mode t)
;;(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(package-initialize)
;;(package-refresh-contents)

;; Download Evil
;;(unless (package-installed-p 'evil)
;;	(package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)
(set-keyboard-coding-system nil)
