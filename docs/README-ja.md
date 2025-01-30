# Linux & Termux 向けの Dotfiles

![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/nao10i/dotfiles?style=for-the-badge&logo=github&color=%2377aaff)
![GitHub repo size](https://img.shields.io/github/repo-size/nao10i/dotfiles?style=for-the-badge&logo=github&color=%2377aaff)
[![Tokei total line](https://tokei.rs/b1/github/nao10i/dotfiles?category=lines&style=for-the-badge&logo=https://simpleicons.org/icons/github.svg&color=%2377aaff)](https://github.com/nao10i/dotfiles)

![GitHub License](https://img.shields.io/github/license/nao10i/dotfiles?style=for-the-badge&logo=github&color=%2355ff99)
![GitHub last commit](https://img.shields.io/github/last-commit/nao10i/dotfiles?style=for-the-badge&logo=github&color=%2355ff99)
![GitHub Repo stars](https://img.shields.io/github/stars/nao10i/dotfiles?style=for-the-badge&logo=github&color=%23ffdd33)

言語: [[English](../)] [日本語]

## 😸 ようこそ

わたしの Dotfiles へようこそ．数多くのプロジェクトの中から見つけてくれてありがとうございます！このリポジトリを利用することで，直感的なターミナル環境を簡単に構築できます．高速に起動・動作する Golang と Rust 製のコマンドラインツールを中心に構成しています．

### Linux

<img src="https://github.com/user-attachments/assets/3be7c42f-ee48-4714-a4a5-d5bd0aa7045f" width="800">

### Termux

<img src="https://github.com/user-attachments/assets/4e6723db-ed9a-4d47-bac6-32cea19f0b15" width="320">

### WSL2

<img src="https://github.com/user-attachments/assets/cd66472f-fe90-46bd-a2f8-464e57fcf7a8" width="800" alt="wsl_zsh_nvim_startuptime">

## 🚀 インストール方法

1. ダウンロード

```bash
git clone https://github.com/nao10i/dotfiles.git
cd dotfiles
```

2. インストール

```bash
# 利用するパッケージマネージャーに応じて以下のコマンドで一括インストールを実施します:
# ./install.sh all [apt|brew|snap|pkg]

# 具体的には [apt|brew|snap|pkg] の部分を置き換えて実行します
# Linux環境にて，brewでセットアップする場合は以下を実行します
./install.sh all brew
```

```bash
# Termux にて pkg でセットアップする場合は以下の通りです
./install.sh all pkg
```

## ✅ サポートOS

- Linux 🐧
  - Ubuntu 22.04以降 (推奨)
  - Arch Linux
  - Fedora
- Android 📱
  - 最新版の Termux

## ✨ 特徴

- **シェル**: Zsh + starship.rs
- **エディター**: Neovim + LazyVim
- **ターミナルマルチプレクサー**: tmux または zellij
- **TUIファイラー**: broot または yazi
- **ターミナルエミュレーター**: Alacritty, Termux

## ☕ 基本コマンド

```bash
./install.sh --help                    # コマンドのヘルプと使用できるコマンドを表示します
./install.sh backup                    # .config ディレクトリのバックアップコピーを作成します
./install.sh list [apt|brew|snap|pkg]  # パッケージマネージャーごとにインストールする対象のパッケージ一覧を表示します
./install.sh [package_name]            # 個別パッケージのインストールを実行します
```

| ヘルプ表示のイメージ |
| :---: |
| <img src="https://github.com/user-attachments/assets/ef09c241-0af0-4660-8bf3-33998be66416" width="800" alt="help"> |

### 📗 個別インストール可能なパッケージの例

| パッケージ名  | 説明                                                                                  |
| ------------- | ------------------------------------------------------------------------------------- |
| hackgen       | HackGenフォント(Hack+源柔ゴシックの合成フォント) NerdFont対応版 をインストールします  |
| docker        | 追加のaptリポジトリからDockerをインストールします                                     |
| fnm           | 最新版のFNM(Fast Node Manager)と最新版LTSのNode.jsをインストールします                |
| fzf           | fzf(fuzzy finder)をgithubからインストールします                                       |
| lazydocker    | LazyDockerをインストールします                                                        |
| lazygit       | LazyGitをインストールします                                                           |
| lazyvim       | LazyVimをインストールします                                                           |
| neovim        | NeovimとLazyVimをインストールします                                                   |
| rustdesk      | Ubuntu Desktop向けにRustDeskをインストールします                                      |
| starship      | starship.rsをインストールします                                                       |
| zed           | Zedエディターをインストールします                                                     |

<!--
- [apt packages](assets/txt/apt-packages.txt)
- [brew packages](Brewfile)
- [snap packages](assets/txt/snap-packages.txt)
- [pkg packages](assets/txt/pkg-packages.txt)
-->

## 🐳 Docker環境でのお試し

以下のコマンドでコンテナを構築，お試しできます．

```bash
docker build -t dotfiles-img .
docker run -it -d --name dotfiles-con dotfiles-img
docker exec -it dotfiles-con /bin/zsh
```

コンテナでaptでインストールする場合は以下を実行します．

```bash
cd dotfiles
./install all apt
```

Homebrew をインストールして進める場合は以下のコマンドを実行します. ユーザー名およびパスワードはともに user としています．

```bash
cd dotfiles
./install all brew
```

## ⌨️ よく使うキーマップ

### Zsh

Emacsモード  `bindkey -e` に加えていくつかのバインドを追加しています．

| キー                                        | 実行される操作                |
| ------------------------------------------- | ----------------------------- |
| <kbd>Ctrl</kbd>+(<kbd>↑</kbd>/<kbd>↓</kbd>) | undo / redo                   |
| <kbd>Ctrl</kbd>+(<kbd>←</kbd>/<kbd>→</kbd>) | backward-word / forward-word  |

### Tmux

#### プレフィックスキー

プレフィックスキーは `Ctrl + \` に設定しています．

| キー                            | 説明                                    |
| ------------------------------- | --------------------------------------- |
| <kbd>I</kbd>                    | tpmでプラグインをインストールします     |
| <kbd>Ctrl</kbd>+<kbd>s</kbd>    | tmux環境を保存します                    |
| <kbd>Ctrl</kbd>+<kbd>r</kbd>    | tmux環境を復元します                    |
| <kbd>e</kbd>                    | ペインの同期モードON/OFFを切り替えます  |

#### Alt キーとの組み合わせによるショートカット

window と pane の操作を可能としています．

| キー                                       | 説明                                          | プレフィックスキーでの操作                          |
| ------------------------------------------ | --------------------------------------------- | --------------------------------------------------- |
| <kbd>Alt</kbd>+(<kbd>↑</kbd>/<kbd>↓</kbd>) | ウィンドウを作成/削除します                   | <kbd>c</kbd>/<kbd>&</kbd>                           |
| <kbd>Alt</kbd>+(<kbd>←</kbd>/<kbd>→</kbd>) | 前・後のウィンドウに切り替えます              | <kbd>p</kbd>/<kbd>n</kbd>                           |
| <kbd>Alt</kbd>+<kbd>[1-9]</kbd>            | 番号1-10のウィンドウに切り替えます            | <kbd>[0-9]</kbd>                                    |
| <kbd>Alt</kbd>+<kbd>-</kbd>                | ウィンドウを水平に分割します                  | <kbd>-</kbd>                                        |
| <kbd>Alt</kbd>+<kbd>\\</kbd>               | ウィンドウを垂直に分割します                  | <kbd>\\</kbd>                                       |
| <kbd>Alt</kbd>+<kbd>[hjkl]</kbd>           | 左/下/上/右のペインにフォーカスを切り替えます | <kbd>←</kbd>/<kbd>↓</kbd>/<kbd>↑</kbd>/<kbd>→</kbd> |

#### Alt + Shift キーとの組み合わせによるショートカット

主に session の操作を可能としています．

| キー                                                        | 説明                             | プレフィックスキーでの操作  |
| ----------------------------------------------------------- | -------------------------------- | --------------------------- |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+(<kbd>↑</kbd>/<kbd>↓</kbd>) | セッションを作成/削除します      |                             |
| <kbd>Alt</kbd>+<kbd>Shift</kbd>+(<kbd>←</kbd>/<kbd>→</kbd>) | 前・後のセッションに切り替えます | <kbd>(</kbd>/<kbd>)</kbd>   |

### Neovim

[LazyVimのキーマップ](https://www.lazyvim.org/keymaps) をベースに，いくつかのキーバインドを追加しています.

| モード | キー                                        | 説明                                                                    |
| ------ | ------------------------------------------- | ----------------------------------------------------------------------- |
| n,v    | <kbd>Ctrl</kbd>+(<kbd>↑</kbd>/<kbd>↓</kbd>) | 前のパラグラフの終端，後のパラグラフの先頭にカーソルを移動します        |
| n,v,i  | <kbd>Ctrl</kbd>+(<kbd>←</kbd>/<kbd>→</kbd>) | 前の単語/次の単語にカーソルを移動します                                 |
| i      | <kbd>Ctrl</kbd>+<kbd>/</kbd>                | Undo (操作を１回戻します)                                               |
| i      | <kbd>Ctrl</kbd>+<kbd>r</kbd>                | Redo (操作を１回やり直します)                                           |

インサートモードで以下の Emacs ライクなショートカットを設定しています．詳細は[こちら](./neovim.md#emacs-like)を参照ください．

- <kbd>Ctrl</kbd>+<kbd>[abdefnpuwy]</kbd>
- <kbd>Alt</kbd>+<kbd>[bdf]</kbd>

## 📜 ライセンス

このプロジェクトは [MIT License](LICENSE) に基づいてライセンスされています．
