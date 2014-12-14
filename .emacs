(set-face-attribute 'default t :font  "Consolas-13" )
(setq-default cursor-type 'bar)

(require 'package)
(push '("melpa" . "http://melpa.milkbox.net/packages/")
        package-archives)

(package-initialize)
(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-monokai)

(require 'evil)
(evil-mode 1)

(tool-bar-mode -1)

(add-to-list 'default-frame-alist '(height . 46))
(add-to-list 'default-frame-alist '(width . 170))

(setq racer-rust-src-path "/Users/apple/other/rust/src/")
(setq racer-cmd "/Users/apple/other/racer/bin/racer")
(add-to-list 'load-path "/Users/apple/other/racer/editors")
(eval-after-load "rust-mode" '(require 'racer))

(defun save-and-compile ()
 "Save all buffers and compile"
 (interactive)
 (save-some-buffers t)
 (compile "cargo build"))

(global-set-key (kbd "<f4>") 'next-error)
(global-set-key (kbd "<S-f4>") 'previous-error)
(global-set-key (kbd "<f7>") 'save-and-compile)
