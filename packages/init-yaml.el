(use-package company
  :ensure t
  :hook (yaml-mode . company-mode))

(defun my-yaml-format ()
  (when (eq major-mode 'yaml-mode)
    (shell-command-on-region (point-min) (point-max) "yamlfmt -in" t t)))
(add-hook 'before-save-hook 'my-yaml-format)

(setq yaml-indent-offset 4)


