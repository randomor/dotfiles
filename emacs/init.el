(require 'cask "/usr/local/Cellar/cask/0.6.0/cask.el")
(cask-initialize)
(require 'pallet)
(add-to-list 'load-path "~/.emacs.d/plugins")
;; Fixing Terminal shift-up|down donot work issue: http://zurktech.blogspot.ch/2014/01/emacs-windmove-and-mavericks-terminalapp.html
(define-key input-decode-map "\e[1;2A" [S-up])
(windmove-default-keybindings)
(autoload 'dirtree "dirtree" "Add directory to tree view" t)

(global-linum-mode t)

;;ido everywhere!
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;;auto-indent
(define-key global-map (kbd "RET") 'newline-and-indent)

;;For coffee-mode
;; automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))
;; only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))

;; This gives you a tab of 2 spaces
(custom-set-variables '(coffee-tab-width 2))

;;After load
;; newline-withoug-break-of-line
(defun newline-without-break-of-line ()
  "1. remove to end of the line.
  2. insert newline with index"
  (interactive)
  (let ((oldpos (point)))
    (end-of-line)
    (newline-and-indent)))

(global-set-key (kbd "C-o") 'newline-without-break-of-line)

;;remapping

(defun revert-this-buffer ()
  (interactive)
  (revert-buffer nil t t)
  (message (concat "Reverted buffer " (buffer-name))))


;;kill buffer without prompting
(defun kill-this-buffer ()
  (interactive)
  (kill-buffer (current-buffer)))

(defun comment-or-uncomment-region-or-line ()
  "Comments or uncomments the region or the current line if there's no active region."
  (interactive)
  (let (beg end)
    (if (region-active-p)
        (setq beg (region-beginning) end (region-end))
      (setq beg (line-beginning-position) end (line-end-position)))
    (comment-or-uncomment-region beg end)
    (next-line)))

(global-set-key (kbd "M-;") 'comment-or-uncomment-region-or-line)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-RET") 'projectile-find-file)
(global-set-key (kbd "C-z") 'repeat)
(global-set-key (kbd "C-x C-r") 'ido-display-buffer)
(global-set-key (kbd "<f6>") 'revert-this-buffer)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "<f1>") 'shell)
(global-set-key (kbd "<f2>") 'rgrep)
(global-set-key (kbd "<f4>") 'menu-bar-open)
(global-set-key (kbd "<f10>") 'magit-status)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(load "~/.emacs.d/projectile-setup")
(load "~/.emacs.d/auto-complete-setup")
(load "~/.emacs.d/ruby")
(load "~/.emacs.d/common-setup")
(load "~/.emacs.d/flyspell-setup")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("1989847d22966b1403bab8c674354b4a2adf6e03e0ffebe097a6bd8a32be1e19" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "33c5a452a4095f7e4f6746b66f322ef6da0e770b76c0ed98a438e76c497040bb" "a774c5551bc56d7a9c362dca4d73a374582caedb110c201a09b410c0ebbb5e70" "7d4d00a2c2a4bba551fcab9bfd9186abe5bfa986080947c2b99ef0b4081cb2a6" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "0c311fb22e6197daba9123f43da98f273d2bfaeeaeb653007ad1ee77f0003037" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
