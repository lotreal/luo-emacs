;;; keybindings.osx.el --- keyboard for emacs running in OS X

;;; Commentary:

;;; code
(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'hyper)

;; Keybonds
(global-set-key [(hyper a)] 'mark-whole-buffer)
(global-set-key [(hyper c)] 'kill-ring-save)
(global-set-key [(hyper x)] 'kill-region)
(global-set-key [(hyper v)] 'yank)
(global-set-key [(hyper s)] 'save-buffer)
(global-set-key [(hyper l)] 'goto-line)
(global-set-key [(hyper w)]
                (lambda () (interactive) (kill-this-buffer)))
(global-set-key [(hyper z)] 'undo)
(global-set-key [(hyper o)] 'other-window)

(global-set-key "\C-z" 'set-mark-command)
(global-set-key "\C-u" 'er/expand-region)
(global-set-key "\C-o" 'other-window)

(global-set-key (kbd "M-i") 'prelude-indent-region-or-buffer)

;; (global-set-key (kbd "M-o") 'other-window) ; was facemenu-keymap


(global-set-key "\C-xk" 'kill-this-buffer)
(global-set-key [(meta g)] 'goto-line)

(global-set-key (kbd "M-1") 'delete-other-windows) ; was digit-argument
(global-set-key (kbd "M-2") 'split-window-vertically) ; was digit-argument
(global-set-key (kbd "M-3") 'split-window-horizontally) ; was digit-argument
(global-set-key (kbd "M-0") 'delete-window) ; was digit-argument
