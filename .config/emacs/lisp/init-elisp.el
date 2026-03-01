;;; init-elisp.el --- config for Emacs Lisp -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package autoinsert
  :ensure nil
  :hook (after-init . auto-insert-mode)
  :custom (auto-insert-query nil)
  :config
  (define-auto-insert
    "\\.el\\'"
    '(lambda ()
       (insert
        ";;; " (file-name-nondirectory (buffer-file-name))
        " --- -*- lexical-binding: t; -*-\n"
        ";;; Commentary:\n"
        ";;; Code:\n\n\n\n"
        "(provide '"
        (file-name-base (buffer-file-name))
        ")\n"
        ";;; "
        (file-name-nondirectory (buffer-file-name))
        " ends here\n"))))

(provide 'init-elisp)
;;; init-elisp.el ends here
