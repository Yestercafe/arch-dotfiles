(setq custom-file (expand-file-name "custom.el"))

(setq make-backup-files nil)
(setq auto-save-default nil)

(set-frame-font "FiraCode Nerd Font Mono")

(show-paren-mode t)

(load (expand-file-name "themes/nordic-night/nordic-night-theme.el"))
;; (load (expand-file-name "themes/nordic-night/nordic-midnight-theme.el"))
(load-theme 'nordic-night :no-confirm)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

(load custom-file)
