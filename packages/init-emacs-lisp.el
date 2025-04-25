(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")))
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

(use-package company
  :ensure t
  :hook (after-init . global-company-mode))

;; Enable auto-indentation for Emacs Lisp
(add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)

