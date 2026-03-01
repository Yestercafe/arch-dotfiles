;;; init-packages.el --- -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("nongnu" . "https://elpa.nongnu.org/nongnu/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(provide 'init-packages)
;;; init-packages.el ends here
