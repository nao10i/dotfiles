#!/bin/bash

# check env
[ -z "$TERMUX_VERSION" ] && echo 'please use this in termux' && exit 1

# get script path
SCRIPT_DIR=$(
  cd $(dirname $BASH_SOURCE)
  pwd
)

# Base dir
DOTFILES_ROOT="$SCRIPT_DIR/../.."
DOTFILES_DATA="$DOTFILES_ROOT/data"
DOTFILES_CONFIG="$DOTFILES_ROOT/config"

# install packages
cat "$DOTFILES_DATA/pkg-packages.txt" | xargs pkg i -y

# zsh
chsh -s zsh
ZDOTDIR="$HOME/.config/zsh"
mkdir -p "$ZDOTDIR"
echo 'ZDOTDIR=$HOME/.config/zsh' >~/.zshenv
cp -r "$DOTFILES_CONFIG"/zsh/* "$ZDOTDIR"
cp "$DOTFILES_CONFIG"/zsh/.zsh* "$ZDOTDIR"

# tmux
TMUXCONF="$HOME/.config/tmux"
mkdir -p "$TMUXCONF"
cp -r "$DOTFILES_CONFIG"/tmux/* "$TMUXCONF"

# starship
cp -r "$DOTFILES_CONFIG"/starship "$HOME/.config/"

# lazygit
cp -r "$DOTFILES_CONFIG"/lazygit/* "$CONFIG_HOME/lazygit/"

# install lazyvim
if [ ! -f ~/.config/nvim/lazy-lock.json ]; then
  "$DOTFILES_ROOT"/install.sh lazyvim

  # lua-language-server
  mkdir -p /data/data/com.termux/files/home/.local/share/nvim/mason/packages/lua-language-server/libexec/bin/
  ln -f -s "$(command -v lua-language-server)" /data/data/com.termux/files/home/.local/share/nvim/mason/packages/lua-language-server/libexec/bin/lua-language-server

  # neovim pluguins
  nvim +q
fi

# font
"$DOTFILES_ROOT"/install.sh hackgen

# keyborad
cp "$DOTFILES_ROOT"/config/termux/termux.properties ~/.termux/

# term color
cp "$DOTFILES_ROOT"/config/termux/colors.properties ~/.termux/

echo 'done.'
