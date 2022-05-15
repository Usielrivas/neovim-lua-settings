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

use {
  'lewis6991/gitsigns.nvim',
  -- tag = 'release' -- To use the latest release
}

use 'terrortylor/nvim-comment'

use { 'tpope/vim-fugitive' }

use 'mhartington/formatter.nvim'
-- use {'neoclide/coc.nvim', branch = 'release'}
use 'L3MON4D3/LuaSnip'
use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/nvim-cmp'


end)
