(defconst my-root user-emacs-directory)

;; (defconst my-lisp-dir
;;   (expand-file-name "lisp/" my-root))

;; (add-to-list 'load-path my-lisp-dir)

(setq custom-file (expand-file-name "custom.el" my-root))

(setq make-backup-files nil)
(setq auto-save-default nil)

(set-frame-font "FiraCode Nerd Font Mono")

(show-paren-mode t)

(load (expand-file-name "themes/nordic-night/nordic-night-theme.el" my-root))
;; (load (expand-file-name "themes/nordic-night/nordic-midnight-theme.el"))
(load-theme 'nordic-night :no-confirm)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

(fido-mode t)

(winner-mode 1)

(load custom-file)
