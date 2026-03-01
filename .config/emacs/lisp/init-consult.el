;;; init-consult.el --- -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package consult
  :ensure t
  :bind (("C-s" . consult-line)              ;; 当前 buffer 搜索
         ("C-c h" . consult-history)         ;; inibuffer 历史
         ("C-c m" . consult-mode-command)
         ("C-x b" . consult-buffer)          ;; 替换 switch-to-buffer
         ("M-y" . consult-yank-pop)          ;; 替换 yank-pop
         ("C-c /" . consult-ripgrep)))       ;; 项目全文搜索

(provide 'init-consult)
;;; init-consult.el ends here
