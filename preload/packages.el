;; my-packages.el
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://elpa.emacs-china.org/melpa/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://elpa.emacs-china.org/marmalade/") t)
(package-initialize)
