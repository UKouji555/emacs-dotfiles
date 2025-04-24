;; Disable the default startup splash screen
(setq inhibit-startup-screen t)

;; Remove the default message in *scratch* buffer
(setq initial-scratch-message nil)

;; neotree
(with-eval-after-load 'neotree
  (define-key neotree-mode-map (kbd ">") 'enlarge-window-horizontally)
  (define-key neotree-mode-map (kbd "<") 'shrink-window-horizontally))

