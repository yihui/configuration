(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(inferior-R-program-name "R")
 '(ess-ask-for-ess-directory nil)
 '(ess-history-file nil)
 '(ess-roxy-template-alist (list (cons "description" "") (cons "details" "") (cons "param" "") (cons "return" "") (cons "author" "Yihui Xie <\\url{http://yihui.name}>") (cons "examples" "")))
 '(ess-user-full-name "Yihui Xie <\\url{http://yihui.name}>")
 '(inferior-R-args "--no-save")
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(scroll-bar-mode (quote right))
 '(x-select-enable-clipboard t))
     ;;; ESS
     (add-hook 'ess-mode-hook
               (lambda ()
                 (ess-set-style 'C++ 'quiet)
                 ;; Because
                 ;;                                 DEF GNU BSD K&R C++
                 ;; ess-indent-level                  2   2   8   5   4
                 ;; ess-continued-statement-offset    2   2   8   5   4
                 ;; ess-brace-offset                  0   0  -8  -5  -4
                 ;; ess-arg-function-offset           2   4   0   0   0
                 ;; ess-expression-offset             4   2   8   5   4
                 ;; ess-else-offset                   0   0   0   0   0
                 ;; ess-close-brace-offset            0   0   0   0   0
                 (add-hook 'local-write-file-hooks
                           (lambda ()
                             (ess-nuke-trailing-whitespace)))))
     ;; (setq ess-nuke-trailing-whitespace-p 'ask)
     ;; or even
     (setq ess-nuke-trailing-whitespace-p t)
     ;;; Perl
     (add-hook 'perl-mode-hook
               (lambda () (setq perl-indent-level 4)))
(ess-toggle-underscore nil)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 87 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
(show-paren-mode t)
