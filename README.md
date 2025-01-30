# Dotfiles for Linux and Termux

![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/nao10i/dotfiles?style=for-the-badge&logo=github&color=%2377aaff)
![GitHub repo size](https://img.shields.io/github/repo-size/nao10i/dotfiles?style=for-the-badge&logo=github&color=%2377aaff)
[![Tokei total line](https://tokei.rs/b1/github/nao10i/dotfiles?category=lines&style=for-the-badge&logo=https://simpleicons.org/icons/github.svg&color=%2377aaff)](https://github.com/nao10i/dotfiles)

![GitHub License](https://img.shields.io/github/license/nao10i/dotfiles?style=for-the-badge&logo=github&color=%2355ff99)
![GitHub last commit](https://img.shields.io/github/last-commit/nao10i/dotfiles?style=for-the-badge&logo=github&color=%2355ff99)
![GitHub Repo stars](https://img.shields.io/github/stars/nao10i/dotfiles?style=for-the-badge&logo=github&color=%23ffdd33)

LANG: [English] [[日本語](docs/README-ja.md)]

## 😸 Welcome

Welcome to my dotfiles. This repository helps easily set up a fast and intuitive terminal environment. This setup installs Zsh with starship prompt, tmux, Neovim, and Golang and Rust-based command-line tools that starts and operates quickly. Grateful that you found this project and took a look!

### Linux Terminal

<img src="https://github.com/user-attachments/assets/3be7c42f-ee48-4714-a4a5-d5bd0aa7045f" width="800">

### Android Termux

<img src="https://github.com/user-attachments/assets/4e6723db-ed9a-4d47-bac6-32cea19f0b15" width="320">

### WSL2

<img src="https://github.com/user-attachments/assets/cd66472f-fe90-46bd-a2f8-464e57fcf7a8" width="800" alt="wsl_zsh_nvim_startuptime">

## 🚀 Installation

1. Download

```bash
git clone https://github.com/nao10i/dotfiles.git
cd dotfiles
```

2. Install

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

## ✅ Supported OS

- Linux 🐧
  - Ubuntu 22.04 and newer (recommended)
  - Arch Linux
  - Fedora
- Android 📱
  - The latest version of Termux

## ✨ Features

- **Shell**: zsh with the starship prompt
- **Editor**: Neovim configured via LazyVim
- **Terminal Multiplexers**: tmux for session management, zellij for workspace management
- **TUI File Managers**: broot for efficient navigation, yazi for rapid file access
- **Terminal Emulator**: Alacritty for performance, Termux for Android environments

## ☕ Basic commands

```bash
./install.sh --help                    # Show help and available commands
./install.sh backup                    # Backup .config dir
./install.sh list [apt|brew|snap|pkg]  # Show install target package list
./install.sh [package_name]            # Install individual package
```

| Help image |
| :---: |
| <img src="https://github.com/user-attachments/assets/ef09c241-0af0-4660-8bf3-33998be66416" width="800" alt="help"> |

### 📗 Install individual package

| Package Name  | Description                                 |
| ------------- | ------------------------------------------- |
| hackgen       | HackGen font (Nerd Font)                    |
| docker        | docker-ce (additional repository)           |
| fnm           | latest FNM (Fast Node Manager) and Node.js  |
| fzf           | fzf (fuzzy finder) from github              |
| lazydocker    | LazyDocker                                  |
| lazygit       | LazyGit                                     |
| lazyvim       | LazyVim                                     |
| neovim        | Neovim and LazyVim                          |
| rustdesk      | RustDesk on Ubuntu Desktop                  |
| starship      | starship.rs                                 |
| zed           | Zed editor on Linux Desktop                 |

<!--
- [apt packages](assets/txt/apt-packages.txt)
- [brew packages](Brewfile)
- [snap packages](assets/txt/snap-packages.txt)
- [pkg packages](assets/txt/pkg-packages.txt)
-->

## 🐳 Docker

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

## ⌨️ Keymaps

### Zsh

Based on Emacs mode with `bindkey -e`, with some additional key bindings added.

| Key                                         | Action                        |
| ------------------------------------------- | ----------------------------- |
| <kbd>Ctrl</kbd>+(<kbd>↑</kbd>/<kbd>↓</kbd>) | undo / redo                   |
| <kbd>Ctrl</kbd>+(<kbd>←</kbd>/<kbd>→</kbd>) | backward-word / forward-word  |

### Tmux

#### prefix key

The tmux prefix key is configured to `Ctrl + \` for easier access.

| Key                             | Description                   |
| ------------------------------- | ------------------------------|
| <kbd>I</kbd>                    | install tmux plugins with tpm |
| <kbd>Ctrl</kbd>+<kbd>s</kbd>    | save tmux env                 |
| <kbd>Ctrl</kbd>+<kbd>r</kbd>    | restore tmux env              |
| <kbd>e</kbd>                    | switch pane-synchronize mode  |

#### alt key shortcut

| Key                                        | Description                       | Prefix key +                                        |
| ------------------------------------------ | --------------------------------- | --------------------------------------------------- |
| <kbd>Alt</kbd>+(<kbd>↑</kbd>/<kbd>↓</kbd>) | create/delete window              | <kbd>c</kbd>/<kbd>&</kbd>                           |
| <kbd>Alt</kbd>+(<kbd>←</kbd>/<kbd>→</kbd>) | switch to previous/next window    | <kbd>p</kbd>/<kbd>n</kbd>                           |
| <kbd>Alt</kbd>+<kbd>[0-9]</kbd>            | switch to 1-10 window             | <kbd>[0-9]</kbd>                                    |
| <kbd>Alt</kbd>+<kbd>-</kbd>                | split window horizontally         | <kbd>-</kbd>                                        |
| <kbd>Alt</kbd>+<kbd>\\</kbd>               | split window vertically           | <kbd>\\</kbd>                                       |
| <kbd>Alt</kbd>+<kbd>[hjkl]</kbd>           | switch to left/down/up/right pane | <kbd>←</kbd>/<kbd>↓</kbd>/<kbd>↑</kbd>/<kbd>→</kbd> |

#### alt+shift key shortcut

| Key                                                         | Description                     | Prefix key +                |
| ----------------------------------------------------------- | ------------------------------- | --------------------------- |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+(<kbd>↑</kbd>/<kbd>↓</kbd>) | create/delete session           |                             |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+(<kbd>←</kbd>/<kbd>→</kbd>) | switch to previous/next session | <kbd>(</kbd>/<kbd>)</kbd>   |

### Neovim

Based on [LazyVim keymaps](https://www.lazyvim.org/keymaps), with some additional key bindings added.

| Mode  | Key                                         | Description                                                             |
| ----- | ------------------------------------------- | ----------------------------------------------------------------------- |
| n,v   | <kbd>Ctrl</kbd>+(<kbd>↑</kbd>/<kbd>↓</kbd>) | move to (the end of the previous / the beginning of the next) paragraph |
| n,v,i | <kbd>Ctrl</kbd>+(<kbd>←</kbd>/<kbd>→</kbd>) | backward word / forward word                                            |
| i     | <kbd>Ctrl</kbd>+<kbd>/</kbd>                | undo                                                                    |
| i     | <kbd>Ctrl</kbd>+<kbd>r</kbd>                | redo                                                                    |

Emacs-like shortcuts are configured in insert mode. For more information, please click [here](docs/neovim.md#emacs-like).

- <kbd>Ctrl</kbd>+<kbd>[abdefnpuwy]</kbd>
- <kbd>Alt</kbd>+<kbd>[bdf]</kbd>

## 📜 License

This project is licensed under the [MIT License](LICENSE).
