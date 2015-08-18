;;; el-recentf.el --- rt

;;; Commentary:

;;; code
(when (featurep 'recentf)
  ;; (global-set-key "" 'recentf-open-files)
  ;; emacs defined C-x C-r runs the command find-file-read-only
  (global-set-key "\C-x\C-r" 'xsteve-ido-choose-from-recentf)

  (defun xsteve-ido-choose-from-recentf ()
    "Use ido to select a recently opened file from the `recentf-list'"
    (interactive)
    (let ((home (expand-file-name (getenv "HOME"))))
      (find-file
       (ido-completing-read "Recentf open: "
                            (mapcar (lambda (path)
                                      (replace-regexp-in-string home "~" path))
                                    recentf-list)
                            nil t)))))
