;;; init-h-dashboard.el --- General Pure Emacs Dashboard configurations. -*- lexical-binding: t no-byte-compile: t -*-
;;
;; Copyleft (CL) 2022-2032 Dr YF Lin
;;
;; Author: Ethan YF Lin <e.yflin@gmail.com>
;; URL: https://github.com/Ethanlinyf/General-Pure-Emacs
;; Under ThingsEngine Project: https://www.thethingsengine.org/
;;--------------------------------------------------------------------
;;; Commentary:
;; Configurations for dashboard.
;;--------------------------------------------------------------------
;;; Code:

;; (use-package counsel-projectile
;;   :ensure t
;;   :hook
;;   (after-init . counsel-projectile-mode))

(use-package dashboard
  :diminish dashboard-mode
  :ensure t
  ;; :requires all-the-icons
  :custom-face (dashboard-heading ((t (:inherit (font-lock-string-face bold)))))
  :init
  (dashboard-setup-startup-hook)
  :config

  ;; Set the title
  (setq dashboard-banner-logo-title "Something Good as Indicated by ThingsEngine")

  ;; (setq dashboard-projects-switch-function 'counsel-projectile-switch-project-action-dired)

  ;; set the number of items for each heading
  (setq dashboard-items '((recents  . 8)
                          (bookmarks . 5)
                          (projects . 6)
                          ;;(agenda . 5)
                          ;;(registers . 5)
                          ))

  ;; set the headings's icon
  (setq dashboard-set-heading-icons t)
  (setq dashboard-heading-icons '((recents   . "file-text")
                                  (bookmarks . "bookmark")
                                  (agenda    . "calendar")
                                  (projects  . "briefcase")
                                  (registers . "database")))

  ;; Content is not centered by default. To center the content, set this varable as t
  (setq dashboard-center-content t)

  ;; To disable shortcut "jump" indicators for each section, set
  (setq dashboard-show-shortcuts nil)

  (setq dashboard-set-file-icons t)
)

(use-package page-break-lines
  :ensure t
  :hook
  (after-init . page-break-lines-mode))

(setq dashboard-page-separator "\n\f\n")

(setq dashboard-set-navigator t)
(setq dashboard-navigator-buttons
      `(;; line1
        ((,(all-the-icons-octicon "milestone" :height 1.1 :v-adjust 0.0)
         "Homepage"
         "Browser Homepage"
         (lambda (&rest _) (browse-url "Https://thethingsengine.org")))

         (,(all-the-icons-octicon "mark-github" :height 1.1 :v-adjust 0.0)
         "GitHub"
         "Browser GitHub"
         (lambda (&rest _) (browse-url "https://github.com/ethanlinyf")))
         ;; (,(all-the-icons-faicon "linkedin" :height 1.1 :v-adjust 0.0)
         ;;  "Linkedin"
         ;;  ""
         ;;  (lambda (&rest _) (browse-url "homepage")))
         ("★" "Star" "Visit ThingsEngine Ship" (lambda (&rest _) (browse-url "https://thethingsengine.org/ship/")))
         ("⚑" nil "Show flags" (lambda (&rest _) (message "flag")) error)
        ("?" "" "?/h" #'show-help nil "<" ">"))
         ;; line 2
        ;; ((,(all-the-icons-faicon "linkedin" :height 1.1 :v-adjust 0.0)
          ;; "Linkedin"
          ;; ""
          ;; (lambda (&rest _) (browse-url "homepage")))
        ;; ("⚑" nil "Show flags" (lambda (&rest _) (message "flag")) error))
        ))

(setq thingsengine-icon t)

(setq dashboard-set-footer t)
(setq dashboard-footer (format "\nPowered by ThingsEngine, %s" (format-time-string "%Y")))
;; (setq dashboard-footer-messages '("Powered by ThingsEngine"))
(setq dashboard-footer-icon (cond ((icon-displayable-p)
                             (all-the-icons-faicon "heart"
                                                   :height 1.1
                                                   :v-adjust -0.05
                                                   :face 'error))
                            ((char-displayable-p ?🧡) "🧡 ")
                            (t (propertize ">" 'face 'dashboard-footer))))

(defun my-dashboard-insert-copyright ()
      "Insert copyright in the footer."
      (when dashboard-set-footer
        (dashboard-insert-center
         (propertize dashboard-footer 'face 'font-lock-comment-face))))
(advice-add #'dashboard-insert-footer :after #'my-dashboard-insert-copyright)

;;--------------------------------------------------------------------
(provide 'init-h-dashboard)
;;; init-h-dashboard.el ends here
