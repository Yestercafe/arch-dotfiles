(setq custom-file "~/.emacs.d/custom.el")

(setq make-backup-files nil)
(setq auto-save-default nil)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(set-frame-font "Sarasa Mono SC")

(setq inhibit-startup-screen t)

(show-paren-mode t)

(load "~/.emacs.d/themes/noctalia-theme.el")
(load-theme 'noctalia :no-confirm)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

(load custom-file)
