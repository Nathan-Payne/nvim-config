-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { 'nyoom-engineering/oxocarbon.nvim', as = "oxocarbon" }
    use { "aktersnurra/no-clown-fiesta.nvim" }
    use { "catppuccin/nvim", as = "catppuccin" }

    use({ 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } })

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({})
        end
    })

    use { 'lewis6991/gitsigns.nvim' }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        "j-hui/fidget.nvim",
        config = function()
            require("fidget").setup({
                window = {
                    blend = 0,
                },
            })
        end
    }

    use {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end
    }

    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require 'alpha'.setup(require 'alpha.themes.startify'.config)
        end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require("lualine").setup()
        end
    }

    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    }

    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {}
        end
    }

    use {
        "beauwilliams/focus.nvim"
    }

    use {
        "windwp/nvim-ts-autotag"
    }

    use {
        "danymat/neogen",
        config = function()
            require('neogen').setup({ snippet_engine = "luasnip" })
        end,
        requires = "nvim-treesitter/nvim-treesitter",
    }

    use {
        "ggandor/leap.nvim",
    }

    use {
        "mfussenegger/nvim-dap"
    }

    use {
        "rcarriga/nvim-dap-ui",
        requires = { "mfussenegger/nvim-dap" }
    }

    -- todo: https://github.com/rcarriga/awesome-neovim
    -- olimorris/persisted.nvim session manager
    -- Pocco81/TrueZen.nvim cool zen mod
    -- configure useful snippets via luasnip directory, add to dotfiles, integrate annotate
    -- gennaro-tedesco/nvim-jqx see if better than using jq on cli
    -- rest-nvim/rest.nvim could be useful for quick requests - possible to adapt insomnia config?
    -- sindrets/diffview.nvim might make handling diffs easier
    --
    -- fixme: leap showing error - highlight group not there?
end)
