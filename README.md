# Dotfiles for Linux and Termux

Welcome to my dotfiles. This repository helps easily set up a visually stunning and colorful terminal environment. Designed for use in mainly English or Japanese environments.

## Linux Terminal

<img src="https://github.com/user-attachments/assets/3be7c42f-ee48-4714-a4a5-d5bd0aa7045f" width="800">

## Termux

<img src="https://github.com/user-attachments/assets/4e6723db-ed9a-4d47-bac6-32cea19f0b15" width="320">

## WSL

<img src="https://github.com/user-attachments/assets/cd66472f-fe90-46bd-a2f8-464e57fcf7a8" width="800" alt="wsl_zsh_nvim_startuptime">

## Installation

```bash
git clone https://github.com/nao10i/dotfiles.git
```

```bash
cd dotfiles
```

```bash
# Install all components using your preferred package manager:
# ./install.sh all [apt|brew|snap|pkg]

# Replace [apt|brew|snap|pkg] with your package manager of choice.
# For example, to use brew on Linux:
./install.sh all brew
```

```bash
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

## Basic commands

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
| lazygit       | LazyGit                           |
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

| Key                             | Description                   |
| ------------------------------- | ------------------------------|
| <kbd>I</kbd>                    | install tmux plugins with tpm |
| <kbd>Ctrl</kbd>+<kbd>s</kbd>    | save tmux env                 |
| <kbd>Ctrl</kbd>+<kbd>r</kbd>    | restore tmux env              |
| <kbd>e</kbd>                    | switch pane-synchronize mode  |

### tmux alt key shortcut
| Key                                        | Description                     | Prefix key +                                        |
| ------------------------------------------ | ------------------------------- | --------------------------------------------------- |
| <kbd>Alt</kbd>+(<kbd>↑</kbd>/<kbd>↓</kbd>) | create/delete window            | <kbd>c</kbd>/<kbd>&</kbd>                           |
| <kbd>Alt</kbd>+(<kbd>←</kbd>/<kbd>→</kbd>) | switch to previous/next window  | <kbd>p</kbd>/<kbd>n</kbd>                           |
| <kbd>Alt</kbd>+<kbd>[1-9]</kbd>            | switch to 1-9 window            | <kbd>[1-9]</kbd>                                    |
| <kbd>Alt</kbd>+<kbd>-</kbd>                | split window horizontally       | <kbd>-</kbd>                                        |
| <kbd>Alt</kbd>+<kbd>\\</kbd>               | split window vertically         | <kbd>\\</kbd>                                       |
| <kbd>Alt</kbd>+<kbd>[hjkl]</kbd>           | go to left/down/up/right pane   | <kbd>←</kbd>/<kbd>↓</kbd>/<kbd>↑</kbd>/<kbd>→</kbd> |

### tmux alt+shift key shortcut
| Key                                                         | Description                     | Prefix key +                |
| ----------------------------------------------------------- | ------------------------------- | --------------------------- |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+(<kbd>↑</kbd>/<kbd>↓</kbd>) | create/delete session           |                             |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+(<kbd>←</kbd>/<kbd>→</kbd>) | switch to previous/next session | <kbd>(</kbd>/<kbd>)</kbd>   |
