-- return {}
return {
  {
    "tpope/vim-fugitive",
    cmd = "Git",
    config = function()
      -- Fugitive auto commands
      local map = vim.keymap.set
      local api = vim.api

      vim.cmd([[
        nnoremap <comma>gx :Git branch -d<space>
        nnoremap ,gn :Git checkout -b<space>
        nnoremap ,gc :Git checkout<space>
        nnoremap ,gM :Git merge<space>
        nnoremap ,gt :Git commit -m ""<left>
      ]])

      local ns_opts = { noremap = true, silent = true }

      local fugitiveGroup = api.nvim_create_augroup("Fugitive", { clear = true })
      api.nvim_create_autocmd("FileType", {
        pattern = "fugitive",
        callback = function()
          map("n", [[q]], ":q<cr>", ns_opts)
        end,
        group = fugitiveGroup,
      })
    end,
    keys = {
      { ",gs", "<cmd>Git<cr>", desc = "Git Status" },
      { ",gl", "<cmd>Git log<cr>", desc = "Git Log" },
      { ",gr", "<cmd>Gread<cr>", desc = "Git Read" },
      { ",gd", "<cmd>Gdiff<cr>", desc = "Git Diff" },
      { ",gb", "<cmd>Git branch<cr>", desc = "Git Branch" },
      { ",g.", "<cmd>:Git add .<cr>", desc = "Git Add all" },
      { ",gp", "<cmd>:Git push<cr>", desc = "Git Push" },
    },
  },
  {
    "tpope/vim-rhubarb",
    dependencies = {
      "tpope/vim-fugitive",
    },
  },
}
