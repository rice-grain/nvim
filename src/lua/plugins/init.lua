require("lazy").setup({
  
  -- LSP
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Theme
  { "Mofiqul/dracula.nvim" },
  
  -- UI
  { "akinsho/bufferline.nvim" },
  { "nvim-tree/nvim-tree.lua" },
  { "akinsho/toggleterm.nvim" },
  
  -- Search
  { "nvim-telescope/telescope.nvim" },
  { "folke/which-key.nvim", opts = { preset = "helix" } },

  -- Mini
  { "echasnovski/mini.move", version = "*" }
})

"
