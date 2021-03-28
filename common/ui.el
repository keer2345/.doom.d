;;; $DOOMDIR/keer-ui.el -*- lexical-binding: t; -*-

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
;; (setq doom-theme 'doom-dracula)
;; (setq doom-theme 'doom-solarized-light)
(setq doom-themes-dark '("doom-dracula" "doom-vibrant" "doom-city-lights" "doom-moonlight" "doom-horizon"
                         "doom-one" "doom-solarized-dark" "doom-palenight" "doom-rouge" "doom-spacegrey"
                         "doom-old-hope" "doom-oceanic-next" "doom-monokai-pro" "doom-material" "doom-henna"
                         "doom-gruvbox" "doom-ephemeral" "chocolate"))

(setq doom-themes-light '("doom-one-light" "doom-gruvbox-light" "doom-solarized-light" "doom-flatwhite"))

(defun kr/load-theme-dark ()
  "Load dark theme"
  (interactive)
  (let* ((themes doom-themes-dark)
         (first-theme (car doom-themes-dark)))
    (counsel-load-theme-action (car themes))
    (message "Current dark theme is: %s" first-theme)
    (setq doom-theme (car themes))
    (pop doom-themes-dark)
    ;; `-t-': add element to the end
    (add-to-list 'doom-themes-dark first-theme t)))

(defun kr/load-theme-light ()
  "Load light theme"
  (interactive)
  (let* ((themes doom-themes-light)
         (first-theme (car doom-themes-light)))
    (counsel-load-theme-action (car themes))
    (message "Current light theme is: %s" first-theme)
    (setq doom-theme (car themes))
    (pop doom-themes-light)
    ;; `-t-': add element to the end
    (add-to-list 'doom-themes-light first-theme t)))

(defun random-choice (items)
  "Random choice a list"
  (let* ((size (length items))
         (index (random size)))
    (nth index items)))

(defun kr/load-theme-random ()
  "Load random themes of doom-*"
  (interactive)
  (let* ((doom-themes (all-completions "doom" (custom-available-themes)))
         (theme       (random-choice doom-themes)))
    (counsel-load-theme-action theme)
    (message "Current random doom-* theme is: %s" theme)
    (setq doom-theme theme)))

;; Get random doom-* themes on Emacs startup
(setq doom-theme (random-choice (custom-available-themes)))
