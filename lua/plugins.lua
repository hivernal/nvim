local use = require("packer").use
require("packer").startup(function()
  use "wbthomason/packer.nvim"

  use "neovim/nvim-lspconfig"
  -- "williamboman/mason.nvim"
  -- use "williamboman/nvim-lsp-installer"

  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "onsails/lspkind.nvim"
  use "hrsh7th/cmp-nvim-lsp-signature-help"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"

  use "mfussenegger/nvim-dap"
  use { "rcarriga/nvim-dap-ui", requires = { { "mfussenegger/nvim-dap" } } }

  use "nvim-lua/plenary.nvim"
  use { "nvim-telescope/telescope.nvim", tag = "0.1.0", requires = { "nvim-lua/plenary.nvim" } }

  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  use "saadparwaiz1/cmp_luasnip"

  use "fedepujol/move.nvim"
  use "windwp/nvim-autopairs"
  use "numToStr/Comment.nvim"
  use "folke/which-key.nvim"
  use "lukas-reineke/indent-blankline.nvim"

  use "nvim-treesitter/nvim-treesitter"

  use "kyazdani42/nvim-web-devicons"
  use { "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" } }
  use { "akinsho/bufferline.nvim", tag = '*', requires = "kyazdani42/nvim-web-devicons" }
  use { "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } }

  use "joshdick/onedark.vim"
end)
