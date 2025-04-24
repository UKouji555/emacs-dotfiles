;; Enable TypeScript LSP via eglot
(use-package eglot
  :ensure t
  :config
  (add-to-list 'eglot-server-programs
               '(typescript-mode . ("typescript-language-server" "--stdio")))
  :hook
  (typescript-mode . eglot-ensure))

;; Provide completion UI using corfu
(use-package corfu
  :ensure t
  :init
  (global-corfu-mode))

(use-package lsp-mode
  :ensure t
  :hook (typescript-mode . lsp-deferred))

(use-package company
  :ensure t
  :init
  (global-company-mode))

;; Prioritize company-capf backend
(setq company-backends '(company-capf))

(use-package reformatter
  :ensure t
  :config
  (reformatter-define web-format
    :program "prettier"
    :args `("--write" "--stdin-filepath" ,buffer-file-name))
  :hook
  (typescript-mode . web-format-on-save-mode))

