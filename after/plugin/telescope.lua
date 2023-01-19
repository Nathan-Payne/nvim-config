require('telescope').setup {
    defaults = {
        layout_strategy = 'flex',
        layout_config = { height = 0.90, width = 0.90 },
    },
    pickers = {
        git_status = {
            theme = "dropdown",
        },
        buffers = {
            theme = "ivy",
        }
    },
}

-- Keymaps
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f..', builtin.builtin, {}) -- all possible pickers picker

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {}) -- search using string under cursor
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
vim.keymap.set('n', '<leader>fc', builtin.commands, {}) -- all executable cmds
vim.keymap.set('n', '<leader>fj', builtin.jumplist, {})
vim.keymap.set('n', '<leader>f.', builtin.highlights, {})

vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, {})

vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>tr', builtin.treesitter, {})
