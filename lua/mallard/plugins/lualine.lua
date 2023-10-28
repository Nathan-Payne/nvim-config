return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
    config = function()
        require("lualine").setup {
            options = {
                icons_enabled = false,
                section_separators = '',
                component_separators = '',
                theme = {
                    normal = {
                        a = { fg = '#dddddd', bg = '#161616' },
                        b = { fg = '#dddddd', bg = '#161616' },
                        c = { fg = '#dddddd', bg = '#161616' },
                    },
                    insert = {
                        a = { fg = '#161616', bg = '#ABE9B3' },
                        b = { fg = '#dddddd', bg = '#161616' },
                        c = { fg = '#dddddd', bg = '#161616' },
                        z = { fg = '#dddddd', bg = '#161616' },
                    },
                    visual = {
                        a = { fg = '#161616', bg = '#C9CBFF' },
                        b = { fg = '#dddddd', bg = '#161616' },
                        c = { fg = '#dddddd', bg = '#161616' },
                        z = { fg = '#dddddd', bg = '#161616' },
                    },
                    command = {
                        a = { fg = '#161616', bg = '#F8BD96' },
                        b = { fg = '#dddddd', bg = '#161616' },
                        c = { fg = '#dddddd', bg = '#161616' },
                        z = { fg = '#dddddd', bg = '#161616' },
                    },
                }
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'filename', 'branch', 'diff', 'diagnostics' },
                lualine_c = { "require'lsp-status'.status()" },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' },
            },
            -- tabline = {
            --     lualine_a = {
            --         {
            --             'diagnostics',
            --
            --             -- Table of diagnostic sources, available sources are:
            --             --   'nvim_lsp', 'nvim_diagnostic', 'nvim_workspace_diagnostic', 'coc', 'ale', 'vim_lsp'.
            --             -- or a function that returns a table as such:
            --             --   { error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt }
            --             sources = { 'nvim_lsp', 'nvim_diagnostic', 'nvim_workspace_diagnostic' },
            --
            --             -- Displays diagnostics for the defined severity types
            --             sections = { 'error', 'warn', 'info', 'hint' },
            --
            --             diagnostics_color = {
            --                 -- Same values as the general color option can be used here.
            --                 error = 'DiagnosticError', -- Changes diagnostics' error color.
            --                 warn  = 'DiagnosticWarn', -- Changes diagnostics' warn color.
            --                 info  = 'DiagnosticInfo', -- Changes diagnostics' info color.
            --                 hint  = 'DiagnosticHint', -- Changes diagnostics' hint color.
            --             },
            --             symbols = { error = 'E', warn = 'W', info = 'I', hint = 'H' },
            --             colored = true, -- Displays diagnostics status in color if set to true.
            --             update_in_insert = false, -- Update diagnostics in insert mode.
            --             always_visible = false, -- Show diagnostics even if there are none.
            --         }
            --     },
            --     lualine_b = { 'filename' },
            -- },
        }
    end
}
