;;; init.el --- settings entry  -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(add-to-list 'load-path
	     (expand-file-name "lisp" user-emacs-directory))

(require 'init-basic)
(require 'init-consts)
(require 'init-packages)
(require 'init-ui)

(require 'init-minibuffer)
(require 'init-consult)

(require 'init-lsp)
(require 'init-elisp)

(setq custom-file (locate-user-emacs-file "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
;;; init.el ends here
