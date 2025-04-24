(use-package lua-mode
  :ensure t)

(use-package lsp-mode
  :ensure t
  :hook (lua-mode . lsp-deferred)
  :config
  (setq lsp-clients-lua-language-server-bin "~/language-server/lua-language-server/bin/lua-language-server"))

(use-package eglot
  :ensure t
  :hook (lua-mode . eglot-ensure))
;; eglot automatically detects lua-language-server if it's in PATH

(use-package reformatter
  :ensure t
  :config
  (reformatter-define lua-format
    :program "lua-format"
    :args '("-i"))
  :hook
  (lua-mode . lua-format-on-save-mode))

;; Indentation settings for lua-mode
(setq lua-indent-level 2)
(setq indent-tabs-mode nil)

