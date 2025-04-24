;; Disable beep sound
(setq ring-bell-function 'ignore)

;; Maximize frame on startup
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

;; Or enable full-screen on startup
;; (add-hook 'window-setup-hook 'toggle-frame-fullscreen t)

;; Disable Transient Mark Mode
(transient-mark-mode -1)

;; Package setup
(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; Install use-package if not installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Configure use-package
(eval-when-compile
  (require 'use-package))

;; Load helpful packages
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package ivy
  :ensure t
  :config
  (ivy-mode 1))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Add custom Lisp directory to load-path
(add-to-list 'load-path (expand-file-name "packages" user-emacs-directory))

;; Load separate config files
(load "init-typescript")
(load "init-lua")
(load "init-neotree")
(load "init-emacs-lisp")

(add-to-list 'load-path (expand-file-name "setting" user-emacs-directory))

(load "keymaps")

