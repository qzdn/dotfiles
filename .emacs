(require 'evil)
(evil-mode 1) 

;; Visuals
(load-theme 'tango-dark)
(set-frame-font "JetBrainsMonoNLNF 10" nil t)
(global-font-lock-mode 1)
(setq font-lock-maximum-decoration t)
(add-hook 'prog-mode-hook 'font-lock-mode)
(add-hook 'text-mode-hook 'font-lock-mode)
(show-paren-mode 1)

;; Line numbers
(global-visual-line-mode t)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(column-number-mode 1) 

;; Disable startup splash screen and other stuff
(setq inhibit-startup-screen t)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; Aufofocus
(global-set-key (kbd "C-x C-b") (lambda () (interactive) (buffer-menu) (other-window 0)))
(global-set-key (kbd "C-x 3") (lambda () (interactive) (split-window-right) (other-window 1)))
(global-set-key (kbd "C-x 2") (lambda () (interactive) (split-window-below) (other-window 1)))
(setq help-window-select t)
(setq compilation-scroll-output t)

;; Cool completion mode
(ido-mode 1)
(ido-everywhere 1)

;; Disable auto-save and add config autoreloading
(setq auto-save-default nil)

(defun my/reload-config-file ()
  "Reload config file if it's the current buffer."
  (when (string= (buffer-file-name) (file-truename user-init-file))
    (message "Reloading config file...")
    (load-file user-init-file)
    (message "Config file reloaded successfully!")))

(add-hook 'after-save-hook 'my/reload-config-file)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil-visual-mark-mode magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
