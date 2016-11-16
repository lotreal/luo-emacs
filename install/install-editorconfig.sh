#!/usr/bin/env bash
cd /tmp
git clone https://github.com/editorconfig/editorconfig-core-c.git
cd editorconfig-core-c
yum install -y cmake pcre pcre-devel
cmake .
make install
