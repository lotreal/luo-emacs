#!/usr/bin/env bash

yum install -y aspell aspell-en ncurses-devel texinfo

cd /tmp
wget http://mirrors.ustc.edu.cn/gnu/emacs/emacs-24.5.tar.gz
tar xf emacs-24.5.tar.gz
cd emacs-24.5
./configure && make && make install
