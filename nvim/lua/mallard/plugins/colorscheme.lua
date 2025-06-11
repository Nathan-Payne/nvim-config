return {
    {
        "catppuccin/nvim",
        priority = 1000,
        name = "catppuccin",
        config = function()
            -- gruvbox concoctis
            local gruvbox_concoctis = {
                bg = "#202020",
                import = "#d3869b",
                variable = "#d4be98",
                constant = "#d8a657",
                tag = "#e78a4e",
                method = "#89b482",
                num = "#ea6962",
                misc = "#7daea3",
                comment = "#928374",
            }

            -- gruvbox material tweaked
            local gruvbox_material = {
                flamingo = "#ddc7a1",
                rosewater = "#d4be98",
                mauve = "#DDB6F2",
                pink = "#f2aeb8",
                red = "#ff7b79",
                maroon = "#bb6969",
                peach = "#f8bd96",
                yellow = "#eae399",
                green = "#89b482",
                blue = "#75b6ad",
                sky = "#89DCEB",
                teal = "#B5E8E0",
                lavender = "#C9CBFF",

                text = "#D9E0EE",
                subtext1 = "#BAC2DE",
                subtext0 = "#A6ADC8",
                overlay2 = "#C3BAC6",
                overlay1 = "#988BA2",
                overlay0 = "#6E6C7E",
                surface2 = "#6E6C7E",
                surface1 = "#575268",
                surface0 = "#302D41",

                base = "#202020",
                mantle = "#202020",
                crust = "#202020",
            }

            -- mocha tweaked
            local catppuccin_mocha = {
                flamingo = "#F2CDCD",
                rosewater = "#F5E0DC",
                mauve = "#DDB6F2",
                pink = "#F5C2E7",
                red = "#fa81a1",
                maroon = "#E8A2AF",
                peach = "#F8BD96",
                yellow = "#EAE399",
                green = "#ABE9B3",
                blue = "#96CDFB",
                sky = "#89DCEB",
                teal = "#B5E8E0",
                lavender = "#C9CBFF",

                text = "#D9E0EE",
                subtext1 = "#BAC2DE",
                subtext0 = "#A6ADC8",
                overlay2 = "#C3BAC6",
                overlay1 = "#988BA2",
                overlay0 = "#6E6C7E",
                surface2 = "#6E6C7E",
                surface1 = "#575268",
                surface0 = "#302D41",

                base = "#161616",
                mantle = "#161616",
                crust = "#161616",
            }


            require('catppuccin').load()
            require('catppuccin').setup {
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                term_colors = true,
                transparent_background = true,
                no_italic = false,
                no_bold = false,
                styles = {
                    comments = {},
                    conditionals = {},
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                },
                integrations = {
                    leap = true,
                },
                color_overrides = {
                    mocha = gruvbox_material,
                },
                highlight_overrides = {
                    mocha = function(cp)
                        return {
                            -- For base configs.
                            NormalFloat = { fg = cp.text, bg = cp.base },
                            CursorLineNr = { fg = cp.base },
                            Search = { bg = cp.surface1, fg = cp.pink, style = { "bold" } },
                            IncSearch = { bg = cp.pink, fg = cp.surface1 },
                            Keyword = { fg = cp.mauve },
                            Type = { fg = cp.blue },
                            Typedef = { fg = cp.yellow },
                            StorageClass = { fg = cp.red, style = { "italic" } },

                            ColorColumn = { bg = "#222028" },
                            TelescopeBorder = { fg = cp.surface1 },
                            LspInfoBorder = { bg = cp.base, fg = cp.surface1 },

                            -- For native lsp configs
                            DiagnosticVirtualTextError = { bg = cp.base },
                            DiagnosticVirtualTextWarn = { bg = cp.base },
                            DiagnosticVirtualTextInfo = { bg = cp.base },
                            DiagnosticVirtualTextHint = { fg = cp.rosewater, bg = cp.base },

                            DiagnosticHint = { fg = cp.rosewater },
                            LspDiagnosticsDefaultHint = { fg = cp.rosewater },
                            LspDiagnosticsHint = { fg = cp.rosewater },
                            LspDiagnosticsVirtualTextHint = { fg = cp.rosewater },
                            LspDiagnosticsUnderlineHint = { sp = cp.rosewater },

                            -- For trouble.nvim
                            TroubleNormal = { bg = cp.base },

                            -- For todo-comments
                            -- TodoBgTODO = { fg = cp.base, bg = cp.yellow },
                            -- TodoFgTODO = { fg = cp.base, bg = cp.yellow },

                            -- For treesitter
                            ["@field"] = { fg = cp.rosewater },
                            ["@property"] = { fg = cp.text },

                            ["@include"] = { fg = cp.red },
                            ["@operator.javascript"] = { fg = cp.text },
                            ["@keyword.operator"] = { fg = cp.sky },
                            ["@punctuation.special"] = { fg = cp.subtext1 },

                            -- ["@float"] = { fg = cp.peach },
                            -- ["@number"] = { fg = cp.peach },
                            ["@boolean"] = { fg = cp.mauve },

                            ["@constructor"] = { fg = cp.lavender },
                            -- ["@constant"] = { fg = cp.peach },
                            -- ["@conditional"] = { fg = cp.mauve },
                            -- ["@repeat"] = { fg = cp.mauve },
                            ["@exception"] = { fg = cp.peach },

                            ["@constant.builtin"] = { fg = cp.lavender },
                            -- ["@function.builtin"] = { fg = cp.peach, style = { "italic" } },
                            -- ["@type.builtin"] = { fg = cp.yellow, style = { "italic" } },
                            ["@type.qualifier"] = { link = "@keyword" },
                            ["@variable.builtin"] = { fg = cp.text },

                            ["@function"] = { fg = cp.green },
                            ["@parameter"] = { fg = cp.peach },
                            ["@keyword"] = { fg = cp.red, style = { "italic" } },
                            ["@keyword.javascript"] = { fg = cp.sky, style = {} },
                            ["@keyword.lua"] = { fg = cp.sky, style = {} },
                            ["@keyword.function"] = { fg = cp.text },
                            ["@keyword.return"] = { fg = cp.mauve, style = {} },
                            -- ["@keyword.export"] = { fg = cp.red, style = {} },

                            -- ["@text.note"] = { fg = cp.base, bg = cp.blue },
                            -- ["@text.warning"] = { fg = cp.base, bg = cp.yellow },
                            -- ["@text.danger"] = { fg = cp.base, bg = cp.red },
                            -- ["@constant.macro"] = { fg = cp.mauve },

                            -- ["@label"] = { fg = cp.blue },
                            ["@method"] = { fg = cp.blue, style = { "italic" } },
                            ["@namespace"] = { fg = cp.rosewater, style = {} },

                            ["@punctuation.delimiter"] = { fg = cp.teal },
                            ["@punctuation.bracket"] = { fg = cp.overlay2 },
                            ["@string"] = { fg = cp.yellow },
                            ["@string.regex"] = { fg = cp.peach },
                            ["@type"] = { fg = cp.rosewater },
                            ["@type.javascript"] = { fg = cp.text },
                            ["@variable"] = { fg = cp.text },
                            ["@tag.attribute"] = { fg = cp.rosewater, style = { "italic" } },
                            ["@tag"] = { fg = cp.maroon },
                            ["@tag.delimiter"] = { fg = cp.text },
                            ["@text"] = { fg = cp.text },

                            -- ["@text.uri"] = { fg = cp.rosewater, style = { "italic", "underline" } },
                            -- ["@text.literal"] = { fg = cp.teal, style = { "italic" } },
                            -- ["@text.reference"] = { fg = cp.lavender, style = { "bold" } },
                            -- ["@text.title"] = { fg = cp.blue, style = { "bold" } },
                            -- ["@text.emphasis"] = { fg = cp.maroon, style = { "italic" } },
                            -- ["@text.strong"] = { fg = cp.maroon, style = { "bold" } },
                            -- ["@string.escape"] = { fg = cp.pink },

                            -- ["@property.toml"] = { fg = cp.blue },
                            -- ["@field.yaml"] = { fg = cp.blue },

                            -- ["@label.json"] = { fg = cp.blue },

                            ["@function.builtin.bash"] = { fg = cp.red, style = { "italic" } },
                            ["@parameter.bash"] = { fg = cp.yellow, style = { "italic" } },

                            ["@field.lua"] = { fg = cp.lavender },
                            ["@constructor.lua"] = { fg = cp.flamingo },

                            ["@property.typescript"] = { fg = cp.lavender, style = { "italic" } },
                            -- ["@constructor.typescript"] = { fg = cp.lavender },
                            -- ["@constructor.tsx"] = { fg = cp.lavender },
                            -- ["@tag.attribute.tsx"] = { fg = cp.mauve },

                            ["@type.css"] = { fg = cp.lavender },
                            ["@property.css"] = { fg = cp.text, style = { "italic" } },

                            ["@lsp.typemod.class.defaultLibrary.javascript"] = { fg = cp.text },
                        }
                    end,
                },
            }

            vim.cmd([[colorscheme catppuccin]])
        end
    },

    -- require('no-clown-fiesta').load()

}
