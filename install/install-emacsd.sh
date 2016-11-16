#!/usr/bin/env bash
curl -L https://git.io/epre | sh

git clone git@github.com:lotreal/luo-emacs.git ~/.emacs.d/luo-emacs

cd ~/.emacs.d/luo-emacs
cp vendor/prelude-modules.el ../prelude-modules.el

git submodule init
git submodule update

cd ~/.emacs.d/luo-emacs/vendor/org-mode
make && make autoloads

sed -i 's/"personal" prelude-dir/"luo-emacs" prelude-dir/g' ~/.emacs.d/init.el
