require("pack")

local o, wo, g, cmd, map = vim.o, vim.wo, vim.g, vim.cmd, vim.keymap.set

-- Launch vim help on K
-- o.keywordprg = ":help"

-- Set highlight on search
o.hlsearch = false

-- Enable mouse mode
o.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
o.clipboard = "unnamedplus"

-- Enable break indent
o.breakindent = true

-- Save undo history
o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
o.ignorecase = true
o.smartcase = true

-- Decrease update time
o.updatetime = 250
o.timeout = true
o.timeoutlen = 300

-- Set completeopt to have a better completion experience
o.completeopt = "menuone,noselect"

-- NOTE: You should make sure your terminal supports this
o.termguicolors = true

-- Set indentation width to 4 spaces
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true

-- Don't highlight the cursor row in netrw
g.netrw_cursor = 0

-- Make line numbers default
wo.number = true

-- Keep signcolumn on by default
wo.signcolumn = "yes"

cmd.colorscheme "mine"

-- [[ KEYMAPS ]]
g.mapleader = " "
g.maplocalleader = " "
map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

map("i", "jk", "<Esc>", { noremap = true })
map("n", "<BS>", "<C-^>", { noremap = true })

-- Remap for dealing with word wrap
-- map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local yank_highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = yank_highlight_group,
    pattern = "*",
})

