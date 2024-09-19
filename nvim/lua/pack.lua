-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    }
end
vim.opt.rtp:prepend(lazypath)

-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
require("lazy").setup({
    -- Git related plugins.
    "tpope/vim-fugitive",
    "tpope/vim-rhubarb",

    -- Detect tabstop and shiftwidth automatically.
    "tpope/vim-sleuth",

    -- Manage session.
    "tpope/vim-obsession",

    "tpope/vim-unimpaired",

    "tpope/vim-surround",

    "tpope/vim-repeat",

    -- Improve netrw.
    "tpope/vim-vinegar",

    -- Access most recently used files easily.
    "yegappan/mru",

    -- Change root directory to root directory of the current file.
    -- "airblade/vim-rooter",

    -- Closes brackets on pressing Enter
    "rstacruz/vim-closer",

    -- "gc" to comment visual regions/lines
    { "numToStr/Comment.nvim", opts = {} },

    {
        -- Add indentation guides even on blank lines
        "lukas-reineke/indent-blankline.nvim",
        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help indent_blankline.txt`
        main = "ibl",
        opts = {},
    },
})

