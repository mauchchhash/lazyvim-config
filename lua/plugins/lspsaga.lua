return {
  {
    "neovim/nvim-lspconfig",
    after = {
      "nvimdev/lspsaga.nvim",
    },
  },
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({})
    end,
    keys = {
      { "gs", "<cmd>Lspsaga finder<CR>", desc = "Lspsaga" },
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },
}
