require("lualine").setup {
    options = {
        icons_enabled = false,
        section_separators = '',
        component_separators = '',
        theme = {
            normal = {
                a = { fg = '#dddddd', bg = '#222222' },
                b = { fg = '#dddddd', bg = '#222222' },
                c = { fg = '#dddddd', bg = '#222222' },
            },
            insert = {
                a = { fg = '#222222', bg = '#55ee55' },
                b = { fg = '#dddddd', bg = '#222222' },
                c = { fg = '#dddddd', bg = '#222222' },
                z = { fg = '#dddddd', bg = '#222222' },
            },
            visual = {
                a = { fg = '#222222', bg = '#5555ee' },
                b = { fg = '#dddddd', bg = '#222222' },
                c = { fg = '#dddddd', bg = '#222222' },
                z = { fg = '#dddddd', bg = '#222222' },
            },
            command = {
                a = { fg = '#222222', bg = '#eeaa55' },
                b = { fg = '#dddddd', bg = '#222222' },
                c = { fg = '#dddddd', bg = '#222222' },
                z = { fg = '#dddddd', bg = '#222222' },
            },
        }
    },
    sections = {
        lualine_c = { "filename", "require'lsp-status'.status()" }
    },
    tabline = {
        lualine_b = { 'filename' },
    },
}
