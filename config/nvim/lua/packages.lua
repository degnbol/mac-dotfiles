-- Paq as package manager as opposed to Packer in plugins.lua
require "paq-nvim" {
	"savq/paq-nvim";

    -- typing behaviour
	"folke/which-key.nvim"; -- pop-up to help with keybindings that have been started
    "tpope/vim-repeat"; -- change . to repeat last native command to last "full" command, which feels more natural.
    "tpope/vim-surround"; -- press cs'" to change surrounding ' with ", ds' to delete surrounding ', ysiw) to surround word with ) and yss[ to surround line with [ ... ] (incl. spaces)

	-- color
	"norcalli/nvim-colorizer.lua"; -- when a hex or other color is defined, highlight the text with its color
	"siduck76/nvim-base16.lua";
	"maxwells-daemons/base16-gigavolt-scheme";

	"Pocco81/TrueZen.nvim"; -- reduce visuals with TZ... commands to e.g. remove left and bottom element on the screen.

	"ryanoasis/vim-devicons"; -- adds icons to files

	-- language
	"nvim-treesitter/nvim-treesitter"; -- language coloring and ensuring of installation
	"neovim/nvim-lspconfig"; -- lsp
	"kabouzeid/nvim-lspinstall"; -- adds :LspInstall <language> for conveniently installing language support
	"hrsh7th/nvim-compe";  -- adds autocompletion
	"onsails/lspkind-nvim"; -- VS code like pictograms for completion
	"terrortylor/nvim-comment"; -- Toggle commenting out code
	"windwp/nvim-autopairs"; -- auto add second parenthesis etc.
	{"lukas-reineke/indent-blankline.nvim", branch = "lua"}; -- show "|" on indented lines
	"tpope/vim-fugitive"; -- git
	"lewis6991/gitsigns.nvim"; -- git decoration to the left
    "JuliaEditorSupport/julia-vim"; -- julia support, colors and unicode substitution.
    -- "urbainvaes/vim-ripple"; -- REPL
    "hkupty/iron.nvim"; -- REPL

	-- UI
	"kyazdani42/nvim-web-devicons"; -- required by nvim-bufferline
	"akinsho/nvim-bufferline.lua"; -- add a line at the top with all the files open in the buffer
	"glepnir/galaxyline.nvim";
	"nvim-lua/popup.nvim";
	"nvim-lua/plenary.nvim";
	"nvim-telescope/telescope.nvim"; -- Fuzzy finder
	"glepnir/dashboard-nvim"; -- open to a dashboard for vi without a file selection, requires telescope or an alternative installed.
    "kyazdani42/nvim-tree.lua"; -- stalls opening and closing the ~/.config/nvim files for some reason even though StartupTime and such says opening time is fine. Press <C-c> to make it get to the point. It doesn't hurt

	-- "tweekmonster/startuptime.vim";  -- use :StartupTime to measure what things are affecting startup time
}
