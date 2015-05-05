					; Package manager
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

					; Default font
(add-to-list 'default-frame-alist '(font . "Consolas-14"))

					; Default frame
(add-to-list 'default-frame-alist '(height . 86))
(add-to-list 'default-frame-alist '(width . 170))

					; Settings
(setq-default cursor-type 'bar)
;(setq-default line-spacing 2)
(tool-bar-mode -1)
(cua-mode)
(add-hook 'focus-out-hook 'save-all) ; autosave
(setq make-backup-files nil)         ; no backup

					; Theme
(load-theme 'base16-eighties t)

;(require 'evil)
;(evil-mode 1)

(setq racer-rust-src-path "/Users/apple/other/rust/src/")
(setq racer-cmd "/Users/apple/other/racer/bin/racer")
(add-to-list 'load-path "/Users/apple/other/racer/editors")
(eval-after-load "rust-mode" '(require 'racer))

					; Functions
(defun save-and-compile ()
 "Save all buffers and compile"
 (interactive)
 (save-some-buffers t)
 (compile "cargo build"))

(defun save-all ()
  (interactive)
  (save-some-buffers t))

(defun launch-atom-shell ()
  (interactive)
  (save-some-buffers t)
  (shell-command "open ~/hobby/atomaid/Maid.app"))

					; Key bindings
(global-set-key (kbd "<f4>") 'next-error)
(global-set-key (kbd "<S-f4>") 'previous-error)
(global-set-key (kbd "<f7>") 'save-and-compile)
(global-set-key (kbd "<f9>") 'launch-atom-shell)
(global-set-key (kbd "<home>") 'move-beginning-of-line)
(global-set-key (kbd "<end>") 'move-end-of-line)
