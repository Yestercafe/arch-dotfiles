;;; init-consts.el --- definitions of constants -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(defvar ivan--os-win (memq system-type '(ms-dos windows-qt cygwin)))
(defvar ivan--os-mac (eq system-type 'darwin))

(provide 'init-consts)
;;; init-consts.el ends here
