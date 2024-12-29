-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")
local map = vim.keymap.set
-- local unmap = vim.keymap.del

-- Unmap Ctrl-[hjkl] in terminal mode
-- unmap("t", "<C-h>")
-- unmap("t", "<C-j>")
-- unmap("t", "<C-k>")
-- unmap("t", "<C-l>")
map("i", "<M-`>", "<Esc>")
map("n", "<F1>", "<Esc>")
map("v", "<F1>", "<Esc>")
map("i", "<F1>", "<Esc>")
map("n", "<F2>", "i")
map("v", "<F2>", "i")
map("i", "<F2>", "")
map("i", "<F3>", "<Esc>")

-- Forward / Backward word
map("n", "<C-Right>", "W")
map("v", "<C-Right>", "W")
map("i", "<C-Right>", "<S-Right>")
map("n", "<C-Left>", "B")
map("v", "<C-Left>", "B")
map("i", "<C-Left>", "<S-Left>")

-- Jump paragraph
map("n", "<C-Up>", "{")
map("v", "<C-Up>", "{")
map("n", "<C-Down>", "}")
map("v", "<C-Down>", "}")

-- Make some Ctrl keys in insert mode Emacs-like
map("i", "<C-a>", "<C-o>^")
map("i", "<C-e>", "<End>")
-- map("i", "<C-d>", "<Del>")
-- map("i", "<C-h>", "<BS>")
map("i", "<C-b>", "<Left>")
map("i", "<C-f>", "<Right>")
map("i", "<C-p>", "<Up>")
map("i", "<C-n>", "<Down>")
map("i", "<M-d>", "<C-o>dw")
map("i", "<M-b>", "<S-Left>")
map("i", "<M-f>", "<S-Right>")
map("i", "<C-u>", "<C-o>^<C-o>d$", { noremap = true, silent = true })
map("i", "<C-y>", "<C-o>p", { noremap = true, silent = true })

-- Override Ctrl-k (LSP Signature Help)
-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	callback = function(args)
-- 		vim.api.nvim_buf_set_keymap(args.buf, "i", "<C-k>", "<C-o>d$", { noremap = true, silent = true })
-- 	end,
-- })

-- Add border to Terminal
local snackterm = function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end

-- Start Terminal keymap
map("n", "<leader>tt", snackterm, { desc = "Terminal (root dir)" })
map("n", "<C-/>", snackterm, { desc = "Terminal (root dir)" })
map("n", "<C-_>", snackterm, { desc = "which_key_ignore" })
