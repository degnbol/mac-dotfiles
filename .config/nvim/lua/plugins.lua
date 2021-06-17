-- using { } for using different branch , loading plugin with certain commands etc
return require("packer").startup(
    function()
        use "wbthomason/packer.nvim"

        -- color
        use "norcalli/nvim-colorizer.lua" -- when a hex or other color is defined, highlight the text with its color 
        use "siduck76/nvim-base16.lua"
        use "maxwells-daemons/base16-gigavolt-scheme"
        
        use "Pocco81/TrueZen.nvim" -- reduce visuals with TZ... commands to e.g. remove left and bottom element on the screen.

        -- language
        use "nvim-treesitter/nvim-treesitter" -- language coloring and ensuring of installation
        use "neovim/nvim-lspconfig" -- lsp
        use "kabouzeid/nvim-lspinstall" -- adds :LspInstall <language> for conveniently installing language support
        use "hrsh7th/nvim-compe"  -- adds autocompletion
        use "onsails/lspkind-nvim" -- VS code like pictograms for completion
        use "terrortylor/nvim-comment" -- Toggle commenting out code
        use "windwp/nvim-autopairs" -- auto add second parenthesis etc.
        use {"lukas-reineke/indent-blankline.nvim", branch = "lua"} -- show | on indented lines
        use 'tpope/vim-fugitive' -- Git
        -- use "lewis6991/gitsigns.nvim"
        
        -- use "akinsho/nvim-bufferline.lua"
        -- use "glepnir/galaxyline.nvim"

        -- snippet support
        -- use "hrsh7th/vim-vsnip"
        -- use "rafamadriz/friendly-snippets"

        -- file managing, picker etc
        -- use "kyazdani42/nvim-tree.lua" -- tree view window for file exploring nvim-tree.lua
        -- use "ryanoasis/vim-devicons"

        -- Fuzzy finder
        use {
            'nvim-telescope/telescope.nvim',
            requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
        }
        -- use "nvim-telescope/telescope-media-files.nvim"

        -- use "glepnir/dashboard-nvim"
        use "tweekmonster/startuptime.vim"  -- use :StartupTime to measure what things are affecting startup time
        use "folke/which-key.nvim"  -- pop-up to help with keybindings that have been started
    end,
    {
        display = {
            border = {"┌", "─", "┐", "│", "┘", "─", "└", "│"}
        }
    }
)
