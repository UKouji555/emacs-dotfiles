(require 'doom-themes)

;; Global settings (enable bold and italic styles)
(setq doom-themes-enable-bold t    ;; Enable bold fonts
      doom-themes-enable-italic t) ;; Enable italic fonts

;; Load the theme (e.g., doom-one, doom-dracula, etc.)
(load-theme 'doom-dracula t)

;; Flash the mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme (requires all-the-icons)
(doom-themes-neotree-config)

;; Treemacs users: set icon theme and enable configuration
(setq doom-themes-treemacs-theme "doom-colors") ;; Theme with icons
(doom-themes-treemacs-config)

;; Improve and fix font styling in org-mode
(doom-themes-org-config)

