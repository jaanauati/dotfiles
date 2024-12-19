#!/bin/sh

# y'know, just makes all the links.

DOTFILES_ROOT=$(pwd -P)

ln -s -v $DOTFILES_ROOT/tmux.conf ~/.tmux.conf 

ln -s -v $DOTFILES_ROOT/config/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua
ln -s -v $DOTFILES_ROOT/config/wezterm/backgrounds ~/.config/wezterm/backgrounds

ln -s -v $DOTFILES_ROOT/config/nvim/init.vim ~/.config/nvim/init.vim
ln -s -v $DOTFILES_ROOT/config/nvim/macmap.vim ~/.config/nvim/macmap.vim


# install external deps
git clone https://github.com/danielcopper/wezterm-session-manager.git ~/.config/wezterm/wezterm-session-manager

