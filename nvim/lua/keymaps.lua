print("Hello")
local g = vim.g

g.mapleader = " "
g.maplocalleader = " "

vim.keymap.set("i", "jk", "<Esc>", { noremap = true })
vim.keymap.set("n", "<BS>", "<C-^>", { noremap = true })
