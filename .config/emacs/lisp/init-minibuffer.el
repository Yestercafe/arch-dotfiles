;;; init-minibuffer.el --- config for minibuffer -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package vertico
  :ensure t
  :init (vertico-mode))

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides
   '((file (styles basic partial-completion)))))

(use-package marginalia
  :ensure t
  :init (marginalia-mode))

(provide 'init-minibuffer)
;;; init-minibuffer.el ends here
