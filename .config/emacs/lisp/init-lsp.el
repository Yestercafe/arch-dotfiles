;;; init-lsp.el --- -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package flymake
  :ensure nil
  :hook (prog-mode . flymake-mode)
  :bind (:map prog-mode-map
	      ("C-c n" . flymake-goto-next-error)
	      ("C-c p" . flymake-goto-prev-error)))

(use-package eglot
  :ensure nil
  :hook (prog-mode . eglot-ensure)
  :custom (eglot-autoshutdown t)
  :bind
  (:map eglot-mode-map
	("C-c r" . eglot-rename)
	("C-c a" . eglot-code-actions)
	("C-c f" . eglot-format-buffer)))

(use-package corfu
  :ensure t
  :init
  (global-corfu-mode)
  (setq corfu-auto t            ;; 自动弹出
        corfu-cycle t           ;; 循环选择
        corfu-preview-current t ;; 预览
        corfu-quit-no-match t)) ;; 无匹配自动退出

(provide 'init-lsp)
;;; init-lsp.el ends here
