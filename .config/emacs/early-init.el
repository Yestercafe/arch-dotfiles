;;; early-init.el --- Early initialization -*- lexical-binding: t; -*-

;; ----------------------------------------------------------------------------
;; Startup Performance
;; ----------------------------------------------------------------------------

;; 在启动期间降低 GC 频率
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)

;; 启动完成后恢复 GC
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 64 1024 1024)
                  gc-cons-percentage 0.1)
            (garbage-collect)))

;; ----------------------------------------------------------------------------
;; 禁用 package.el 自动初始化
;; ----------------------------------------------------------------------------
(setq package-enable-at-startup nil)

;; ----------------------------------------------------------------------------
;; UI 优化（在 frame 创建前）
;; ----------------------------------------------------------------------------

;; 禁用不必要的 UI 元素
(setq-default
 inhibit-startup-message t
 inhibit-startup-screen t
 inhibit-startup-echo-area-message user-login-name
 initial-scratch-message nil)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; 更快的 frame 渲染
(setq frame-inhibit-implied-resize t)

;; 禁止闪烁
(setq inhibit-redisplay t
      inhibit-message t)

(add-hook 'window-setup-hook
          (lambda ()
            (setq inhibit-redisplay nil
                  inhibit-message nil)
            (redisplay)))

;; ----------------------------------------------------------------------------
;; 原生编译优化（Emacs 28+）
;; ----------------------------------------------------------------------------
(when (featurep 'native-compile)
  (setq native-comp-async-report-warnings-errors nil
        native-comp-deferred-compilation t))

;; ----------------------------------------------------------------------------
;; Frame 默认参数
;; ----------------------------------------------------------------------------

(setq default-frame-alist
      '((vertical-scroll-bars . nil)
        (internal-border-width . 12)
        (left-fringe . 8)
        (right-fringe . 8)
        (fullscreen . maximized)))

;; macOS 特殊优化
(when (eq system-type 'darwin)
  (setq ns-use-proxy-icon nil
        frame-title-format nil))

;; ----------------------------------------------------------------------------
;; 性能相关默认值
;; ----------------------------------------------------------------------------

(setq read-process-output-max (* 1024 1024)) ; 1MB
(setq process-adaptive-read-buffering nil)

;; 提高 minibuffer 响应
(setq enable-recursive-minibuffers t)

;; ----------------------------------------------------------------------------
;; 文件名处理优化（可选）
;; ----------------------------------------------------------------------------

;; 启动期间禁用 file-name-handler
(defvar early-init-file-name-handler-alist file-name-handler-alist)

(setq file-name-handler-alist nil)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq file-name-handler-alist
                  early-init-file-name-handler-alist)))

;; 关闭 bell
(setq ring-bell-function 'ignore)

;;; early-init.el ends here
