require("lazy").setup({

  -- LSP
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },

  -- Theme
  { "Mofiqul/dracula.nvim" },

  -- UI
  { "folke/noice.nvim" },
  { "akinsho/bufferline.nvim" },
  { "nvim-tree/nvim-tree.lua" },
  { "akinsho/toggleterm.nvim" },

  -- Search
  { "mg979/vim-visual-multi" },
  { "nvim-telescope/telescope.nvim" },
  { "folke/which-key.nvim",             opts = { preset = "helix" } },

  -- Mini
  { "echasnovski/mini.move",            version = "*" },
  { "echasnovski/mini.pairs",           version = "*" },
  { "echasnovski/mini.animate",         version = "*" },
  { "echasnovski/mini.indentscope",     version = "*" },
  { "echasnovski/mini.starter",         version = "*" },
  { "echasnovski/mini.notify",          version = "*" },
  { "echasnovski/mini.cursorword",      version = "*" },
})
