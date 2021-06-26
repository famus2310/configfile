-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--
 local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --LSP
  use "neovim/nvim-lspconfig"
  use "kabouzeid/nvim-lspinstall"
  use "glepnir/lspsaga.nvim"
  use "folke/trouble.nvim"

  --Completion
  use({
		'hrsh7th/nvim-compe',
		requires = {
			{ 'ray-x/lsp_signature.nvim' },
			{ 'onsails/lspkind-nvim' },
      {"hrsh7th/vim-vsnip"},
      {"rafamadriz/friendly-snippets"},
		},
	})

  --treesitter (Syntax)
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
  use "nvim-treesitter/playground"

  --telescope (Fuzzy Finder)
  use({
		'nvim-telescope/telescope.nvim',
		requires = {
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-fzy-native.nvim' },
      { 'nvim-telescope/telescope-project.nvim' },
    }
	})

  --which-key (Key Mapper)
  use "folke/which-key.nvim"

  -- Colorscheme
  use 'folke/tokyonight.nvim'
  use 'glepnir/zephyr-nvim'

  -- Statusline
  use {
  'glepnir/galaxyline.nvim',
    branch = 'main',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  --colorize hex code
  use 'norcalli/nvim-colorizer.lua'

  --start page
  use 'glepnir/dashboard-nvim'

  --comments
  use 'b3nj5m1n/kommentary'

  -- explorer
  use {
    "kyazdani42/nvim-tree.lua",
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use {"ahmedkhalf/lsp-rooter.nvim"} -- with this nvim-tree will follow you

  --terminal
  use {"akinsho/nvim-toggleterm.lua"}

  --indent blankline
  use({
		'lukas-reineke/indent-blankline.nvim',
		branch = 'lua',
  })

  use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}

end)

