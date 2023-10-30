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
        }
    end
}
