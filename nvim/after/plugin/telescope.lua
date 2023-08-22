local map = vim.keymap.set
local opts = { remap = false }

-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require("telescope").setup {
    defaults = {
        mappings = {
            i = {
                ["<C-u>"] = false,
                ["<C-d>"] = false,
            },
        },
    },
}

-- Enable telescope fzf native, if installed
pcall(require("telescope").load_extension, 'fzf')

-- See `:help telescope.builtin`
map("n", "<leader>?", require("telescope.builtin").oldfiles, opts)
map("n", "<leader><space>", require("telescope.builtin").buffers, opts)
map("n", "<leader>/", function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, opts)

map("n", "<leader>gf", require("telescope.builtin").git_files, opts)
map("n", "<leader>sf", require("telescope.builtin").find_files, opts)
map("n", "<leader>sh", require("telescope.builtin").help_tags, opts)
map("n", "<leader>sw", require("telescope.builtin").grep_string, opts)
map("n", "<leader>sg", require("telescope.builtin").live_grep, opts)
map("n", "<leader>sd", require("telescope.builtin").diagnostics, opts)

