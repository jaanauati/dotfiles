#!/bin/sh
#
DOTFILES_ROOT=$(pwd -P)

rm -v ~/.tmux.conf

rm -v ~/.config/wezterm/
rm -v ~/.config/nvim/init.vim ~/.config/nvim/macmap.vim
