(setq mac-option-modifier 'meta
      mac-command-modifier 'super)

(global-set-key (kbd "s-a") 'mark-whole-buffer) ;;对应Windows上面的Ctrl-a 全选
(global-set-key (kbd "s-c") 'kill-ring-save) ;;对应Windows上面的Ctrl-c 复制
(global-set-key (kbd "s-s") 'save-buffer) ;; 对应Windows上面的Ctrl-s 保存
(global-set-key (kbd "s-v") 'yank) ;对应Windows上面的Ctrl-v 粘贴
(global-set-key (kbd "s-z") 'undo) ;对应Windows上面的Ctrol-z 撤销
(global-set-key (kbd "s-x") 'kill-region) ;对应Windows上面的Ctrol-x 剪切


(setq tab-always-indent 'complete)
(icomplete-mode 1)

(set-face-attribute 'default nil :height 140)

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(setq backup-directory-alist
      `(("." . "~/.emacs.d/backups")))

(setq auto-save-file-name-transforms
      `((".*" "~/.emacs.dauto-save-list/" t)))

(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file t)

(use-package vertico
  :ensure t
  :config
  (vertico-mode 1))

(load-theme `tango)

(use-package auctex
  :ensure t
  :defer t)
