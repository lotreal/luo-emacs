#!/usr/bin/env bash

yum install -y aspell aspell-en ncurses-devel texinfo

cd /tmp
wget http://mirrors.ustc.edu.cn/gnu/emacs/emacs-25.1.tar.gz
tar xf emacs-25.1.tar.gz
cd emacs-25.1
./configure && make && make install
