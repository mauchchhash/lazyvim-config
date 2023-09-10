return {
  "ThePrimeagen/harpoon",
  config = function()
    require("harpoon").setup({
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
    })

    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")
    local n_opts = { noremap = true, silent = false }
    local map = vim.keymap.set

    map("n", "<space>ha", function()
      mark.add_file()
    end, n_opts)
    map("n", "<space>hh", function()
      ui.toggle_quick_menu()
    end, n_opts)

    map("n", "<space>1", function()
      ui.nav_file(1)
    end, n_opts)
    map("n", "<space>2", function()
      ui.nav_file(2)
    end, n_opts)
    map("n", "<space>3", function()
      ui.nav_file(3)
    end, n_opts)
    map("n", "<space>4", function()
      ui.nav_file(4)
    end, n_opts)
    map("n", "<space>5", function()
      ui.nav_file(5)
    end, n_opts)
    map("n", "<space>6", function()
      ui.nav_file(6)
    end, n_opts)

    map("n", "<space>9", function()
      ui.nav_prev()
    end, n_opts)
    map("n", "<space>0", function()
      ui.nav_next()
    end, n_opts)
  end,
}
