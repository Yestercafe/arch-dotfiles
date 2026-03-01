;;; init-basic.el --- basic config for common Emacs -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; 关闭备份文件
(setq make-backup-files nil)
(setq auto-save-default nil)

;; 显示括号匹配
(show-paren-mode t)

;; 自动成对符号输入
(add-hook 'prog-mode-hook #'electric-pair-mode)

;; 在 prog-mode 中显示 relative line numbers
(setq display-line-numbers-type 'relative)
(add-hook 'prog-mode-hook
	  (lambda ()
	    (display-line-numbers-mode 1)))

;; 可溢出的 C-v 和 M-v
(setq scroll-error-top-bottom t)

;; 选中删除模式
(delete-selection-mode 1)

;; 内置 minibuffer 补全
;;(fido-mode t)

;; winner-mode 可以撤销/重做 frame 布局
(winner-mode 1)
(bind-key "C-x !" 'winner-undo)

(provide 'init-basic)
;;; init-basic.el ends here
