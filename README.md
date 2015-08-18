# luo-emacs
My Emacs


## INSTALL

```bash
yum install aspell

curl -L https://git.io/epre | sh
emacs
git clone git@github.com:lotreal/luo-emacs.git ~/.emacs.d/luo-emacs

cd .emacs.d/luo-emacs
cp prelude-modules.el ../prelude-modules.el

git submodule init
git submodule update

cd .emacs.d/luo-emacs/vendor/org-mode
make && make autoloads

sed -i 's/"personal" prelude-dir/"luo-emacs" prelude-dir/g' ~/.emacs.d/init.el
```

## LINKS
- [Prelude: is an enhanced Emacs 24 distribution that should make your experience with Emacs both more pleasant and more powerful.](https://github.com/bbatsov/prelude)
- [http://wikemacs.org/wiki/Prelude](http://wikemacs.org/wiki/Prelude)
- [Installing and setting up emacs](http://pragmaticemacs.com/installing-and-setting-up-emacs/)
- [Emacs From Scratch, Part 1: Extending Emacs basics](http://y.tsutsumi.io/emacs-from-scratch-part-1-extending-emacs-basics.html)
