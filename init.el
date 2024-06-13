;; -*- lexical-binding: t -*-

;; keymap for macos
(setq mac-option-modifier 'meta
      mac-command-modifier 'super)

;; basic text manipulation operation like macos
(global-set-key (kbd "s-a") 'mark-whole-buffer)
(global-set-key (kbd "s-c") 'kill-ring-save) 
(global-set-key (kbd "s-s") 'save-buffer) 
(global-set-key (kbd "s-v") 'yank) 
(global-set-key (kbd "s-z") 'undo) 
(global-set-key (kbd "s-x") 'kill-region) 

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(global-display-line-numbers-mode 1)

(setq inhibit-splash-screen 1)

(set-face-attribute 'default nil :family "JetBrainsMono Nerd Font" :height 160)

;; open init file with f2
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)

;; mouse scroll
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

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

(use-package orderless
  :ensure t)
(setq completion-styles '(orderless))

(use-package marginalia
  :ensure t
  :config
  (marginalia-mode 1))
  

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
(setq company-idle-delay 0.2)

(global-set-key (kbd "C-h C-f") 'find-function)

;; (use-package rust-ts-mode
;;   :mode ("\\.rs\\'" . rust-ts-mod)
;;   :hook ((rust-ts-mode . eglot)
;; 	 (rust-ts-mode . company-mode)))
