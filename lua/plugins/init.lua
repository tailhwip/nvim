return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      require 'configs.lspconfig'
    end,
  },

  {
    'nvim-tree/nvim-tree.lua',
    opts = require 'configs.nvimtree',
  },

  {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    config = function()
      require 'configs.conform'
    end,
  },

  {
    'tpope/vim-projectionist',
    lazy = false,
    config = function()
      require 'configs.projectionist'
    end,
  },

  {
    'tpope/vim-sleuth',
    lazy = false,
  },

  { 'tpope/vim-commentary' },

  { 'mfussenegger/nvim-jdtls' },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },
}
