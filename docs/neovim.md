# Neovim

## Keymaps

Based on [LazyVim keymaps](https://www.lazyvim.org/keymaps), with some additional key bindings added.

| Mode  | Key                                         | Description                                                             |
| ----- | ------------------------------------------- | ----------------------------------------------------------------------- |
| n,v   | <kbd>Ctrl</kbd>+(<kbd>↑</kbd>/<kbd>↓</kbd>) | move to (the end of the previous / the beginning of the next) paragraph |
| n,v,i | <kbd>Ctrl</kbd>+(<kbd>←</kbd>/<kbd>→</kbd>) | backward word / forward word                                            |
| i     | <kbd>Ctrl</kbd>+<kbd>/</kbd>                | Undo                                                                    |
| i     | <kbd>Ctrl</kbd>+<kbd>r</kbd>                | Redo                                                                    |

Emacs-like shortcuts are configured in insert mode.

- <kbd>Ctrl</kbd>+<kbd>[abdefhnpuwy]</kbd>

| Mode  | Key                 | Description                                                             |
| ----- | ------------------- | ----------------------------------------------------------------------- |
| i     | <kbd>Ctrl</kbd>+a   | Move the cursor to the beginning of the line.                           |
| i     | <kbd>Ctrl</kbd>+e   | Move the cursor to the end of the line.                                 |
| i     | <kbd>Ctrl</kbd>+d   | Delete the character under the cursor.                                  |
| i     | <kbd>Ctrl</kbd>+h   | Delete the character before the cursor (backspace).                     |
| i     | <kbd>Ctrl</kbd>+b   | Move the cursor one character backward.                                 |
| i     | <kbd>Ctrl</kbd>+f   | Move the cursor one character forward.                                  |
| i     | <kbd>Ctrl</kbd>+p   | Move the cursor to the previous line.                                   |
| i     | <kbd>Ctrl</kbd>+n   | Move the cursor to the next line.                                       |
| i     | <kbd>Ctrl</kbd>+u   | Delete all characters before the cursor on the current line.            |
| i     | <kbd>Ctrl</kbd>+w   | Delete the word before the cursor.                                      |
| i     | <kbd>Ctrl</kbd>+y   | Paste (yank) the most recently deleted text at the cursor position.     |

- <kbd>Alt</kbd>+<kbd>[bdf]</kbd>

| Mode | Key               | Description   |
| ---- | ----------------- | ------------- |
| i    | <kbd>Alt</kbd>+d  | delete word   |
| i    | <kbd>Alt</kbd>+b  | backward word |
| i    | <kbd>Alt</kbd>+f  | forward word  |
