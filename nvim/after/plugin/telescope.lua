local map = vim.keymap.set
local opts = { remap = false }
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require("telescope").setup {
    defaults = {
        mappings = {
            i = {
                ["<C-u>"] = false,
                ["<C-d>"] = false,
                ["<Esc>"] = actions.close
            },
            n = {
                ["q"] = actions.send_to_qflist + actions.open_qflist
            }
        },
    },
}

-- Enable telescope fzf native, if installed
pcall(require("telescope").load_extension, 'fzf')

-- See `:help telescope.builtin`
map("n", "gs", builtin.find_files, opts)
map("n", "g/", function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, opts)
map("n", "<leader><space>", builtin.buffers, opts)
map("n", "<leader>?", builtin.oldfiles, opts)
map("n", "<leader>gf", builtin.git_files, opts)
map("n", "<leader>sh", builtin.help_tags, opts)
map("n", "<leader>sw", builtin.grep_string, opts)
map("n", "<leader>sg", builtin.live_grep, opts)
map("n", "<leader>sd", builtin.diagnostics, opts)

