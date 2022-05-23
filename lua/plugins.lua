vim.cmd [[
  syntax enable
  colorscheme dracula
  packadd packer.nvim
]]

require('packer').startup(function()
-- Packer can manage itself
  use 'wbthomason/packer.nvim'

use 'windwp/nvim-autopairs'

-- Using Packer:
use 'Mofiqul/dracula.nvim'

use {
    'kyazdani42/nvim-tree.lua',
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

use 'terrortylor/nvim-comment'
-- use 'sheerun/vim-polyglot'

use { 'tpope/vim-fugitive' }
use {'neoclide/coc.nvim', branch = 'release'}
use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

 use "lukas-reineke/indent-blankline.nvim"

use {
  'lewis6991/gitsigns.nvim',
  -- tag = 'release' -- To use the latest release
}

end)
