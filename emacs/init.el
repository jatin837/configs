(setq pwd "~/.dotfiles/configs/emacs")
(setq base-config (concat pwd "/base.el"))
(setq plugins-config (concat pwd "/plugins.el"))
(load base-config)
(load plugins-config)

(add-to-list 'custom-theme-load-path (concat pwd "/themes")) 

(load-theme 'tron-legacy t)
