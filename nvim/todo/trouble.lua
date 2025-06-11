require('trouble').setup({

    action_keys = {
        jump_close = {"o", "<tab>"},
    },

    -- keymaps
    vim.keymap.set("n", "<leader>//", "<cmd>TroubleToggle<cr>",
        { silent = true, noremap = true }
    );

    vim.keymap.set("n", "<leader>/d", "<cmd>TroubleToggle workspace_diagnostics<cr>",
        { silent = true, noremap = true }
    );

    vim.keymap.set("n", "<leader>/r", "<cmd>TroubleToggle lsp_references<cr>",
        { silent = true, noremap = true }
    );

    vim.keymap.set("n", "<leader>/l", "<cmd>TroubleToggle loclist<cr>",
        { silent = true, noremap = true }
    )
})
