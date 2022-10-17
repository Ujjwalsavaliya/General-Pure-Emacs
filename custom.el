(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes '(doom-one))
 '(custom-safe-themes
   '("1e8865a3e23ff9c3f4f651217a6f565cb1cc09575c1d7a68b25e24bd3495ff4c" "a8950f7287870cd993d7e56991a45e1414a09d97e4fbf08f48973a1381bc7aaf" "92cfd42cedb42fdd3ea0d84d518825a94f29b30be20f65978dab7d7c8fa30c6a" "06a2eef27703cd3c8b017c90d9025d766ade307971826362c487a5273e14cc5a" "d6c5b14073abc649dad816750ef1ac7d5defdf1630d4e9938e06c38ad547d6da" "8d68cd652ab405df5db91acc66be58307e008bfac3ddc4beef7d7f814d37026c" "b8720a6ec85bee63542f0b202763e0a40606863e9ca7ebd94b7fcd7744234312" "0f964c8dbc5a668cc2ba7aa1003792fbbf3000a6ed69c0e53b1eeb2c1afc25cb" "df069ec238487ceab1cec64809a3c1dcef1393123ecdf430bdb7b94537ca2c6a" "b87f0a7cc94fc07f1417f95de2382a7c1c853a6822d987af45b3b3c5e95e3abb" "04b856ef48419963ad1b22dfe0e2b388e4bb9ee126d84fc0300352afc18732bd" "43b78a08f245bc198dadf35b324f445472c92dda3f1b6d1746cefee9f2ade177" "3eb4031719479655814b5db031492570cdc7c82e37f34d7707515590c926980f" "7f954d5bee47a27cc6cc83d1d6b80f7a32d82f744a725375d6e22b65758f9a5e" "5a6854c6ad74c99ced6e42ed19f0856d2feba54fdaafe05e15fec509a1d1bd7a" "c0d992b42529cc61d03cbb8668df5c928d179ab5babbd21c9673b9aa47707f90" "b9e222c23b493f3f0a452e06135fb108f062c31e4adc00842ce2f9e3c3c9368e" "66bdbe1c7016edfa0db7efd03bb09f9ded573ed392722fb099f6ac6c6aefce32" "22ce392ec78cd5e512169f8960edf5cbbad70e01d3ed0284ea62ab813d4ff250" "6d741c51b4fd0dd4211fe4134c55b95018e94765e0dfd27771a2f54642ba11f8" "025fd2aaf2c446acda600c3f3b17dbaf3a77cf93578325d6ec8a778f8bc91341" "2f241ca8cad85d33a0443998c8b105d8d5508e93fbde415fa8402f1987799fb0" "8e8152ac5b1c2a4f55928ca03a6e6d93647b9a9900f7613e433092b202191963" "89feed18f1d627659e68e457852ffff5bd63c5103f5d23fbc949db121d4ce742" "3319c893ff355a88b86ef630a74fad7f1211f006d54ce451aab91d35d018158f" default))
 '(display-time-mode t)
 '(exec-path-from-shell-arguments '("-l"))
 '(package-selected-packages
   '(modus-themes dirvish oauth2 diredful julia-repl julia-mode exec-path-from-shell live-py-mode winum org-superstar-mode lin abbrev all-the-icons-completion-mode zotxt window-numbering which-key vertico valign use-package undo-tree treemacs-tab-bar treemacs-projectile treemacs-persp treemacs-magit treemacs-all-the-icons rainbow-delimiters pyvenv popwin pdf-tools pangu-spacing page-break-lines osx-lib org-superstar org-roam-ui org-roam-bibtex org-ql org-noter org-download orderless ns-auto-titlebar multi-term minions markdown-mode marginalia lua-mode latex-preview-pane keycast hungry-delete htmlize good-scroll gnu-elpa-keyring-update flycheck f3 epc embark-consult ef-themes doom-themes doom-modeline diredfl dired-git-info diminish dashboard ctrlf counsel-projectile corfu-doc company-auctex cdlatex cape all-the-icons-ibuffer all-the-icons-dired all-the-icons-completion))
 '(safe-local-variable-values
   '((eval progn
           (defun save-and-publish-website nil "Save all buffers and publish."
                  (interactive)
                  (when
                      (yes-or-no-p "Really save and publish current project?")
                    (save-some-buffers t)
                    (org-publish-project "website" t)
                    (message "Site published done.")))
           (defun save-and-publish-statics nil "Just copy statics like js, css, and image file .etc."
                  (interactive)
                  (org-publish-project "statics" t)
                  (message "Copy statics done."))
           (defun save-and-publish-rstatics nil "Just copy statics like js, css, and image file .etc.\12                         Which is a reverse operation of `save-and-publish-statics'."
                  (interactive)
                  (org-publish-project "rstatics" t)
                  (message "Copy rstatics done."))
           (defun save-and-publish-file nil "Save current buffer and publish."
                  (interactive)
                  (save-buffer t)
                  (org-publish-current-file t))
           (defun delete-org-and-html nil "Delete current org and the relative html when it exists."
                  (interactive)
                  (when
                      (yes-or-no-p "Really delete current org and the relative html?")
                    (let
                        ((fileurl
                          (concat "~/site/public/"
                                  (file-name-base
                                   (buffer-name))
                                  ".html")))
                      (if
                          (file-exists-p fileurl)
                          (delete-file fileurl))
                      (delete-file
                       (buffer-file-name))
                      (kill-this-buffer)
                      (message "Delete org and the relative html done."))))
           (defun just-delete-relative-html nil "Just delete the relative html when it exists."
                  (interactive)
                  (when
                      (yes-or-no-p "Really delete the relative html?")
                    (let
                        ((fileurl
                          (concat "~/site/public/"
                                  (file-name-base
                                   (buffer-name))
                                  ".html")))
                      (if
                          (file-exists-p fileurl)
                          (progn
                            (delete-file fileurl)
                            (message "Delete the relative html done."))
                        (message "None relative html.")))))
           (define-minor-mode auto-save-and-publish-file-mode "Toggle auto save and publish current file." :global nil :lighter ""
             (if auto-save-and-publish-file-mode
                 (progn
                   (add-hook 'after-save-hook #'save-and-publish-file :append :local))
               (remove-hook 'after-save-hook #'save-and-publish-file :local)))
           (add-hook 'org-mode-hook #'auto-save-and-publish-file-mode)
           (use-package simple-httpd :ensure t :config
             (setq httpd-root "~/Org-site/public"))
           (defun preview-current-buffer-in-browser nil "Open current buffer as html."
                  (interactive)
                  (let
                      ((fileurl
                        (concat "http://127.0.0.1:8080/"
                                (file-name-base
                                 (buffer-name))
                                ".html")))
                    (save-and-publish-file)
                    (unless
                        (httpd-running-p)
                      (httpd-start))
                    (browse-url fileurl))))
     (org-publish-project-alist
      ("orgfiles" :base-directory "~/Org-site/source/org/" :publishing-directory "~/Org-site/public/" :base-extension "org" :recursive t :publishing-function org-html-publish-to-html :headline-levels 4 :language "en" :section-numbers nil :with-planning t :with-priority t :with-toc t :html-doctype "html5" :html-head-include-default-style nil :html-head-include-scripts nil :html-checkbox-type unicode :html-indent t :html-validation-link "<a href=\"http://www.thingsengine.org/\">ThingsEngine</a>")
      ("org-site" :base-directory "~/Org-site/source/" :base-extension "js" :publishing-directory "~/Org-site/public/" :recursive nil :publishing-function org-publish-attachment)
      ("images" :base-directory "~/Org-site/source/img" :base-extension any :publishing-directory "~/Org-site/public/img" :recursive t :publishing-function org-publish-attachment)
      ("themes" :base-directory "~/Org-site/source/theme/" :base-extension any :publishing-directory "~/Org-site/public/theme/" :recursive t :publishing-function org-publish-attachment)
      ("rorg-site" :base-directory "~/Org-site/public/" :base-extension "js" :publishing-directory "~/Org-site/source/" :recursive nil :publishing-function org-publish-attachment)
      ("rimages" :base-directory "~/Org-site/public/img/" :base-extension any :publishing-directory "~/Org-site/source/img/" :recursive t :publishing-function org-publish-attachment)
      ("rthemes" :base-directory "~/Org-site/public/theme/" :base-extension any :publishing-directory "~/Org-site/source/theme/" :recursive t :publishing-function org-publish-attachment)
      ("website" :components
       ("orgfiles" "org-site" "images" "themes"))
      ("statics" :components
       ("confs" "images" "themes"))
      ("rstatics" :components
       ("rorg-site" "rimages" "rthemes")))
     (org-html-head-include-scripts)
     (org-html-htmlize-output-type . inline-css)
     (org-export-in-background . t)
     (user-full-name . "Dr YF Lin")))
 '(tool-bar-mode nil)
 '(warning-suppress-log-types '((use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Menlo" :foundry "nil" :slant normal :weight regular :height 160 :width normal))))
 '(dashboard-heading ((t (:inherit (font-lock-string-face bold))))))
