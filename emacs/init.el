;; set the prefix for this directory
;; this file is linked to ~/.emacs

(setq pwd "~/.dotfiles/emacs")


(setq base-config (concat pwd "/base.el"))
(setq plugins-config (concat pwd "/plugins.el"))
(setq themes-config (concat pwd "/themes.el"))


(load base-config)
(load plugins-config)
(load themes-config)
