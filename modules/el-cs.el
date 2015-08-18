;;; el-cs.el --- coding-style.el

;;; Commentary:

;;; code
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;; http://www.emacswiki.org/emacs/NoTabs
;;; Smart inference of indentation style
(defun how-many-region (begin end regexp &optional interactive)
  "Print number of non-trivial matches for REGEXP in region.
    Non-interactive arguments are Begin End Regexp"
  (interactive "r\nsHow many matches for (regexp): \np")
  (let ((count 0) opoint)
    (save-excursion
      (setq end (or end (point-max)))
      (goto-char (or begin (point)))
      (while (and (< (setq opoint (point)) end)
                  (re-search-forward regexp end t))
        (if (= opoint (point))
            (forward-char 1)
          (setq count (1+ count))))
      (if interactive (message "%d occurrences" count))
      count)))
(defun infer-indentation-style ()
  ;; if our source file uses tabs, we use tabs, if spaces spaces, and if
  ;; neither, we use the current indent-tabs-mode
  (let ((space-count (how-many-region (point-min) (point-max) "^  "))
        (tab-count (how-many-region (point-min) (point-max) "^\t")))
    (if (> space-count tab-count) (setq indent-tabs-mode nil))
    (if (> tab-count space-count) (setq indent-tabs-mode t))))

(setq indent-tabs-mode nil)
(infer-indentation-style)


(defun ska-untabify ()
  "My untabify function as discussed and described at
 http://www.jwz.org/doc/tabs-vs-spaces.html
 and improved by Claus Brunzema:
 - return nil to get `write-contents-hooks' to work correctly
   (see documentation there)
 - `make-local-hook' instead of `make-local-variable'
 - when instead of if
 Use some lines along the following for getting this to work in the
 modes you want it to:

 \(add-hook 'some-mode-hook
           '(lambda ()
               (make-local-hook 'write-contents-hooks)
                (add-hook 'write-contents-hooks 'ska-untabify nil t)))"
  (save-excursion
    (goto-char (point-min))
    (message "ska-untabify")
    (when (search-forward "\t" nil t)
      (untabify (1- (point)) (point-max)))
    nil))


(load "editorconfig")
