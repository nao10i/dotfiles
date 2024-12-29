#!/bin/bash

cmd_exists() {
  command -v "$1" &>/dev/null
}

if cmd_exists apt; then
  if [ -z "${TERMUX_VERSION}" ]; then
    sudo apt update && sudo apt upgrade -y
  else
    apt update && apt upgrade -y
  fi
fi

# if cmd_exists pkg; then
#   pkg up -y
# fi

if cmd_exists snap; then
  sudo snap refresh
fi

if cmd_exists brew; then
  brew update
  brew upgrade
fi

if cmd_exists rustup; then
  rustup update stable
fi
