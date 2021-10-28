;; This file contains basic configs like
;;		- no start splash screen
;;		- no scroll bar
;;		- no tool bar 

(setq inhibit-startup-screen t)
(setq visible-bell nil)
(setq default-tab-width 2)

(scroll-bar-mode -1)
(set-fringe-mode 10)
(menu-bar-mode 0)
(tool-bar-mode 0)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

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

(setq create-lockfiles nil) 
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))
