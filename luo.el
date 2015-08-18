;;; luo.el

;;; Commentary:

;; Some config for Luo

;;; Code:
(defvar emacs-luo-dir (file-name-directory load-file-name)
  "The root dir of the Emacs LUO.")
(defvar luo-modules-dir (expand-file-name  "modules" emacs-luo-dir)
  "This directory houses all of the LUO modules.")
(defvar luo-vendor-dir (expand-file-name "vendor" emacs-luo-dir)
  "This directory houses packages of LUO want.")

(message "Emacs-LUO is loading... (%s)" emacs-luo-dir)


(prelude-require-packages '(nginx-mode editorconfig))


(tool-bar-mode 0)
(menu-bar-mode 0)
;; (scroll-bar-mode 0)
(load-theme 'manoj-dark t)
(ispell-change-dictionary "american" t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq ispell-program-name "aspell" ; use aspell instead of ispell
      ispell-extra-args '(""))

;; load modules
(load (expand-file-name "el-cs.el" luo-modules-dir))

(load (expand-file-name "el-keybindings.el" luo-modules-dir))
(load (expand-file-name "el-recentf.el" luo-modules-dir))
(load (expand-file-name "el-js.el" luo-modules-dir))
(load (expand-file-name "el-org.el" luo-modules-dir))
(load "editorconfig")

(provide 'luo)
;;; luo.el ends here
