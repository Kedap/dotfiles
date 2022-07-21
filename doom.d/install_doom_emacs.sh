#!/bin/sh

echo "Cloning doom emacs..."
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d

echo "Run the doom script"
~/.emacs.d/bin/doom install
