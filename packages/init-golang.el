(use-package go-mode
  :ensure t
  :hook ((go-mode . lsp-deferred)
         (before-save . gofmt-before-save))
  :config
  (setq tab-width 4
        indent-tabs-mode 1))

(use-package lsp-mode
  :ensure t
  :commands lsp lsp-deferred)

(use-package company
  :ensure t
  :hook (go-mode . company-mode))

(use-package flycheck
  :ensure t
  :hook (go-mode . flycheck-mode))

(defun my-go-mode-setup ()
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save nil t))
(add-hook 'go-mode-hook 'my-go-mode-setup)
