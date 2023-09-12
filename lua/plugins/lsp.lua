return {
  {
    "neovim/nvim-lspconfig",
    after = {
      "nvimdev/lspsaga.nvim",
    },
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- disabling gr to use it for substitute.nvim
      keys[#keys + 1] = { "gr", false }
    end,
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
