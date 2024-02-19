(require 'package)(add-to-list 'package-archives             '("melpa" . "https://melpa.org/packages/") t)(unless (package-installed-p 'use-package)  (package-refresh-contents)  (package-install 'use-package))(eval-when-compile  (require 'use-package))(use-package flycheck  :ensure t  :init (global-flycheck-mode))(use-package magit  :ensure t)(use-package helm  :ensure t)(use-package company  :ensure t  :init (global-company-mode)  :config (setq company-idle-delay 0.2))(setq backup-directory-alist `(("." . "~/.emacs.d/backups/")))(set-face-attribute 'default nil :family "Monaco" :height 120)(setq inhibit-startup-screen t)(switch-to-buffer "*scratch*")(setq initial-major-mode 'org-mode)(setq initial-scratch-message "")(setq ring-bell-function 'ignore)(require 'mouse)(xterm-mouse-mode t)(defun handle-mouse-event (event)  (interactive "e")  (let ((scroll-amount 3)        (event-type (event-basic-type event)))    (cond ((eq event-type 'mouse-5)           (scroll-up scroll-amount))          ((eq event-type 'mouse-4)           (scroll-down scroll-amount))          (t (mouse-set-point event)))))(defun my-eshell-mode-hook ()  (display-line-numbers-mode -1))(add-hook 'eshell-mode-hook 'my-eshell-mode-hook)(global-display-line-numbers-mode t)(global-set-key (kbd "<mouse-4>") 'scroll-up-line)(global-set-key (kbd "<mouse-5>") 'scroll-down-line)(global-set-key (kbd "M-x") 'helm-M-x)(custom-set-variables ;; custom-set-variables was added by Custom. ;; If you edit it by hand, you could mess it up, so be careful. ;; Your init file should contain only one such instance. ;; If there is more than one, they won't work right. '(package-selected-packages '(dockerfile-mode)))(custom-set-faces ;; custom-set-faces was added by Custom. ;; If you edit it by hand, you could mess it up, so be careful. ;; Your init file should contain only one such instance. ;; If there is more than one, they won't work right. )