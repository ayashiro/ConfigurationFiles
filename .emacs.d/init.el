;;; kye binds
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\M-p" 'windmove-up)
(global-set-key "\M-n" 'windmove-down)

;;; show parens correspond relation
(show-paren-mode t)
;;; ignore difference between upperward and lowerward
(setq completion-ignore-case t)

;;;setting for c++
(require 'flymake)

(defun flymake-cc-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "g++" (list "-Wall" "-Wextra" "-fsyntax-only" "-std=c++1y" local-file))))
(defun flymake-c-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "gcc" (list  "-Wall" "-Wextra" "-fsyntax-only"  local-file))))


(push '("\\.cpp$" flymake-cc-init) flymake-allowed-file-name-masks)
(push '("\\.c$" flymake-c-init) flymake-allowed-file-name-masks)

(add-hook 'c++-mode-hook
          '(lambda ()
             (flymake-mode t)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(haskell-mode-hook (quote (turn-on-haskell-indentation)))
 '(inhibit-default-init t)
 '(inhibit-startup-buffer-menu t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(setq twittering-use-master-password t)
(defun titech-proxy() (setq url-proxy-services
      '(("http" . "proxy.noc.titech.ac.jp:3128")
	  ("https" . "proxy.noc.titech.ac.jp:3218"))) )

