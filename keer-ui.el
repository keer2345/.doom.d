;;; $DOOMDIR/keer-ui.el -*- lexical-binding: t; -*-

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
;; (setq doom-theme 'doom-dracula)
(setq doom-theme 'doom-solarized-light)
(setq doom-dark-themes '("doom-dracula" "doom-vibrant" "doom-city-lights" "doom-moonlight" "doom-horizon"
                         "doom-one" "doom-solarized-dark" "doom-palenight" "doom-rouge" "doom-spacegrey"
                         "doom-old-hope" "doom-oceanic-next" "doom-monokai-pro" "doom-material" "doom-henna"
                         "doom-gruvbox" "doom-ephemeral" "chocolate"))

(setq doom-light-themes '("doom-one-light" "doom-gruvbox-light" "doom-solarized-light" "doom-flatwhite"))

(defun kr/load-dark-theme ()
  (interactive)
  (let* ((themes doom-dark-themes)
         (first-theme (car doom-dark-themes)))
    (counsel-load-theme-action (car themes))
    (message "Current dark theme is: %s" first-theme)
    (setq doom-theme (car themes))
    (pop doom-dark-themes)
    ;; `-t-': add element to the end
    (add-to-list 'doom-dark-themes first-theme t)))

(defun kr/load-light-theme ()
  (interactive)
  (let* ((themes doom-light-themes)
         (first-theme (car doom-light-themes)))
    (counsel-load-theme-action (car themes))
    (message "Current light theme is: %s" first-theme)
    (setq doom-themes (car themes))
    (pop doom-light-themes)
    ;; `-t-': add element to the end
    (add-to-list 'doom-light-themes first-theme t)))
