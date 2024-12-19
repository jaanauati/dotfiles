#!/bin/sh
#
DOTFILES_ROOT=$(pwd -P)

rm -v ~/.tmux.conf

rm -v ~/.config/wezterm/wezterm.lua ~/.config/wezterm/backgrounds
rm -v ~/.config/nvim/init.vim ~/.config/nvim/macmap.vim

rm -rfv ~/.config/wezterm/wezterm-session-manager
