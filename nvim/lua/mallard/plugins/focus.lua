return {
    "nvim-focus/focus.nvim",
    version = false,
    config = function()
        require('focus').setup({
            autoresize = {
                enable = false,
                width =  90
            },
            ui = {
                cursorline = false,
                signcolumn = false,
            },
        })

        vim.keymap.set('n', '<S-left>', ':FocusSplitLeft<CR>', { silent = true })
        vim.keymap.set('n', '<S-down>', ':FocusSplitDown<CR>', { silent = true })
        vim.keymap.set('n', '<S-up>', ':FocusSplitUp<CR>', { silent = true })
        vim.keymap.set('n', '<S-right>', ':FocusSplitRight<CR>', { silent = true })
    end
}
