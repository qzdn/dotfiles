;; melpa.org repo
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; Auto install on new system
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(dolist (pkg '(evil evil-org org-modern magit))
  (unless (package-installed-p pkg)
    (package-install pkg)))

;; Evil-mode
(setq evil-want-keybinding nil)
(require 'evil)
(evil-mode 1)
(evil-set-undo-system 'undo-redo)
(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

;; Org-mode
(require 'evil-org)
(add-hook 'org-mode-hook 'evil-org-mode)
(require 'evil-org-agenda)
(evil-org-agenda-set-keys)

(with-eval-after-load 'org
  (setq org-capture-templates
    '(("t" "Task" entry
       (file+headline "~/org/tasks.org" "Tasks")
       "* TODO %?\n  SCHEDULED: %t\n  /Description/")
      ("n" "Note" entry
       (file+headline "~/org/notes.org" "Notes")
       "* %?\n  %U\n")))
  (setq org-directory "~/org/")
  (setq org-agenda-files '("~/org/"))
  (setq org-log-done 'time)             ; CLOSED: timestamp after completion
  (setq org-deadline-warning-days 3)
  (setq org-hide-emphasis-markers t)
  (setq org-todo-keywords
        '((sequence "TODO" "IN-PROGRESS" "WAITING" "|" "DONE" "CANCELLED")))
  (require 'org-modern)
  (global-org-modern-mode))

(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
(global-set-key (kbd "C-c l") #'org-store-link)

(setq calendar-week-start-day 1)

;; Completion
(ido-mode 1)
(ido-everywhere 1)

;; Visuals and UI
(load-theme 'wombat :no-confirm)
(add-to-list 'default-frame-alist '(font . "IosevkaNFM-10"))
(global-font-lock-mode 1)
(setq font-lock-maximum-decoration t)

(setq inhibit-startup-screen t)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(show-paren-mode 1)
(set-fringe-mode 0)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq tab-always-indent 'complete)

(global-visual-line-mode t)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(column-number-mode 1)

(blink-cursor-mode 1)
(setq blink-cursor-blinks -1)
(setq blink-cursor-interval 0.33)

;; Behaviour
(setq help-window-select t)
(setq compilation-scroll-output t)
(setq auto-save-default nil)

;; Autofocus
(global-set-key (kbd "C-x C-b")
                (lambda () (interactive) (buffer-menu) (other-window 0)))
(global-set-key (kbd "C-x 3")
                (lambda () (interactive) (split-window-right) (other-window 1)))
(global-set-key (kbd "C-x 2")
                (lambda () (interactive) (split-window-below) (other-window 1)))

;; Config autoreload
(defun my/reload-config-file ()
  (when (string= (buffer-file-name) (file-truename user-init-file))
    (load-file user-init-file)
    (message "Config reloaded.")))
(add-hook 'after-save-hook #'my/reload-config-file)
 
;; Autocrap
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil evil-org org-modern magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
