(require 'grizzl)
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)
;; Press Command-p for fuzzy find in project
(global-set-key (kbd "M-RET") 'projectile-find-file)
(global-set-key (kbd "C-c C-r") 'projectile-invalidate-cache)
