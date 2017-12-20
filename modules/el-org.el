;;; el-org.el --- emacs-luo: orgmode config

;;; Commentary:

;;; code
(prelude-require-packages '(bbdb))

(add-to-list 'load-path (expand-file-name "org-mode/lisp" luo-vendor-dir))
(add-to-list 'load-path (expand-file-name "org-mode/contrib/lisp" luo-vendor-dir))
(require 'org)
;; (load (expand-file-name "org-octopress.el" luo-vendor-dir))
(load (expand-file-name "org-norang.el" luo-vendor-dir))

(setq org-publish-project-alist
      '(
        ("yk-docs-org"
         ;; Path to your org files.
         :base-directory "/luo/workspace/yk-docs/org/"
         :base-extension "org"

         ;; Path to your Jekyll project.
         :publishing-directory "/luo/workspace/yk-docs/jekyll/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :html-extension "html"
         :body-only t ;; Only export section between <body> </body>
         )

        ("yk-docs-static"
         :base-directory "/luo/workspace/yk-docs/org/assets/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
         :publishing-directory "/luo/workspace/yk-docs/jekyll/"
         :recursive t
         :publishing-function org-publish-attachment)

        ("ykd" :components ("yk-docs-org" "yk-docs-static"))
        ))

(setq org-publish-project-alist
      '(
        ("blog-org" .  (:base-directory "/luo/workspace/octo/org_posts"
                                        :base-extension "org"
                                        :publishing-directory "/luo/workspace/octo/build"
                                        :sub-superscript ""
                                        :recursive t
                                        :publishing-function org-publish-org-to-octopress
                                        :headline-levels 4
                                        :html-extension "markdown"
                                        :octopress-extension "markdown"
                                        :body-only t))
        ("blog-extra" . (:base-directory "/luo/workspace/octo/org_posts"
                                         :publishing-directory "/luo/workspace/octo/build"
                                         ;; :base-extension "markdown\\|css\\|pdf\\|png\\|jpg\\|gif\\|svg"
                                         :base-extension "markdown"
                                         :publishing-function org-publish-attachment
                                         :recursive t
                                         :author nil
                                         ))
        ("blog" . (:components ("blog-org" "blog-extra")))
        ))

(setq org-export-with-sub-superscripts nil)

(require 'org-crypt)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance (quote("crypt")))
(setq org-crypt-key nil)

(provide 'el-org)
;;; el-org.el ends here
