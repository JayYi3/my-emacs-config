;; -*- lexical-binding: t -*-
(setq mac-option-modifier 'meta
      mac-command-modifier 'super)

(global-set-key (kbd "s-a") 'mark-whole-buffer) ;;对应Windows上面的Ctrl-a 全选
(global-set-key (kbd "s-c") 'kill-ring-save) ;;对应Windows上面的Ctrl-c 复制
(global-set-key (kbd "s-s") 'save-buffer) ;; 对应Windows上面的Ctrl-s 保存
(global-set-key (kbd "s-v") 'yank) ;对应Windows上面的Ctrl-v 粘贴
(global-set-key (kbd "s-z") 'undo) ;对应Windows上面的Ctrol-z 撤销
(global-set-key (kbd "s-x") 'kill-region) ;对应Windows上面的Ctrol-x 剪切

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(global-display-line-numbers-mode 1)

(setq inhibit-splash-screen 1)

(set-face-attribute 'default nil :family "JetBrainsMono Nerd Font" :height 160)

;; open init file with f2
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)

;;(use-package evil
;;  :ensure t
;;  :config
;;  (evil-mode 1))

(setq backup-directory-alist
      `(("." . "~/.emacs.d/backups")))

(setq auto-save-file-name-transforms
      `((".*" "~/.emacs.d/auto-save-list/" t)))

(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file t)

(use-package vertico
  :ensure t
  :config
  (vertico-mode 1))

(use-package magit
  :ensure t)

(use-package company
  :ensure t)

(load-theme `tango)

(use-package auctex
  :ensure t
  :defer t)

(tool-bar-mode -1)
(menu-bar-mode -1)

(global-company-mode 1)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0)

(global-set-key (kbd "C-h C-f") 'find-function)

;; (use-package rust-ts-mode
;;   :mode ("\\.rs\\'" . rust-ts-mod)
;;   :hook ((rust-ts-mode . eglot)
;; 	 (rust-ts-mode . company-mode)))
