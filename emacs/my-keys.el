; http://stackoverflow.com/a/683575/515585
(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

(define-key my-keys-minor-mode-map (kbd "C-c RET") 'projectile-switch-to-buffer)
(define-key my-keys-minor-mode-map (kbd "M-RET") 'projectile-find-file)
(define-key my-keys-minor-mode-map (kbd "C-c C-r") 'projectile-invalidate-cache)

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)

(my-keys-minor-mode 1)

(defun my-minibuffer-setup-hook ()
  (my-keys-minor-mode 0))

(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)

(global-set-key (kbd "C-c C-RET") 'projectile-switch-to-buffer)