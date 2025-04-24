;; Ensure all-the-icons is available for icon display
(use-package all-the-icons
  :ensure t)

;; Setup neotree with icon theme and keybinding
(use-package neotree
  :ensure t
  :after all-the-icons                  ;; Load after all-the-icons
  :bind ([f1] . neotree-toggle)         ;; Toggle neotree with F8
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))  ;; Use icons if in GUI
  (setq neo-create-file-auto-open t)                      ;; Auto-open new files
  (setq neo-persist-show t)                               ;; Persist tree state
  (setq neo-window-fixed-size nil))                       ;; Allow window resizing


