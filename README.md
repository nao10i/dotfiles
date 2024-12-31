# Dotfiles for Linux and Termux

Welcome to my dotfiles.

## Linux Terminal

<img src="https://github.com/user-attachments/assets/3be7c42f-ee48-4714-a4a5-d5bd0aa7045f" width="800">

## Termux

<img src="https://github.com/user-attachments/assets/4e6723db-ed9a-4d47-bac6-32cea19f0b15" width="320">

## Installation

```bash
git clone https://github.com/nao10i/dotfiles.git
cd dotfiles

# Install all components using your preferred package manager:
# ./install.sh all [apt|brew|snap|pkg]

# Replace [apt|brew|snap|pkg] with your package manager of choice.
# For example, to use brew on Linux:
./install.sh all brew

# To use pkg on Termux:
./install.sh all pkg
```

## Supported OS

- Linux
  - Ubuntu 22.04 and newer (recommended)
  - Arch Linux
  - Fedora
- Android
  - The latest version of Termux

## Environment to be set up

- **Shell**: zsh with the starship prompt
- **Editor**: Neovim configured via LazyVim
- **Terminal Multiplexers**: tmux for session management, zellij for workspace management
- **TUI File Managers**: broot for efficient navigation, yazi for rapid file access
- **Terminal Emulator**: Alacritty for performance, Termux for Android environments

## Basic command

```bash
./install.sh --help                    # Show help and available commands
./install.sh backup                    # Backup .config dir
./install.sh list [apt|brew|snap|pkg]  # Show install target package list
./install.sh [package_name]            # Install individual package
```

### Install individual package list

| Package Name  | Description                       |
| ------------- | --------------------------------- |
| hackgen       | HackGen font                      |
| docker        | docker-ce (additional repository) |
| fnm           | latest FNM and Node.js            |
| fzf           | fzf (github.com)                  |
| lazydocker    | LazyDocker                        |
| lazyvim       | LazyVim                           |
| neovim        | Neovim and LazyVim                |
| rustdesk      | RustDesk                          |
| starship      | starship.rs                       |
| zed           | Zed editor                        |

## Docker

You can build and enter a container with the following commands.

```bash
docker build -t dotfiles-img .
docker run -it -d --name dotfiles-con dotfiles-img
docker exec -it dotfiles-con /bin/zsh
```

In container, install apt packages

```bash
cd dotfiles
./install all apt
```

or install Homebrew with following command. (USERNAME/PASSWORD: user/user)

```bash
cd dotfiles
./install all brew
```

## Keymaps
### tmux prefix_key = ctrl+\

The tmux prefix key is configured to `Ctrl + \` for easier access.

| Key           | Description                   |
| ------------- | ------------------------------|
| I             | install tmux plugins with tpm |
| Ctrl+s        | save tmux env                 |
| Ctrl+r        | restore tmux env              |
| e             | switch pane-synchronize mode  |

### tmux alt key shortcut
| Key       | Description                     | Prefix key     |
| --------- | ------------------------------- | -------------- |
| Alt+(←/→) | switch to previous/next window  | p              |
| Alt+(↑/↓) | create/delete window            | c              |
| Alt+-     | split window horizontally       | -              |
| Alt+\     | split window vertically         | \              |
| Alt+[1-9] | switch to 1-9 window            | [1-9]          |

### tmux alt+shift key shortcut
| Key             | Description                     | Prefix key     |
| --------------- | ------------------------------- | -------------- |
| Alt+Shift+(←/→) | switch to previous/next session | p              |
| Alt+Shift+(↑/↓) | create/delete session           | c              |
