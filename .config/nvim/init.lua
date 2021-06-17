require 'plugins'
require 'settings'
require 'keymappings'
require 'colors'
require 'TrueZen'
require 'whichkey'
require 'top-bufferline'
require 'statusline'


-- Languages
require 'nvim-lspconfig'
require('nvim-autopairs').setup()
require 'nvim-compe' -- requires nvim-autopairs
require 'treesitter-nvim'
require('lspkind').init()
require 'gitsigns-nvim' -- git decoration
require('nvim_comment').setup()
require 'indent-blankline'

require 'telescope-nvim'
require 'dashboard'

require 'highlights'
require 'file-icons'

