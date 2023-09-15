return {
  "nguyenvukhang/nvim-toggler",
  opts = {
    -- your own inverses
    inverses = {
      ["{}"] = "[]",
    },
    -- removes the default <leader>i keymap
    remove_default_keybinds = true,
    -- removes the default set of inverses
    -- remove_default_inverses = false,
  },
  keys = {
    {
      "<leader>ut",
      "<cmd>lua require('nvim-toggler').toggle()<cr>",
      desc = "Toggle text",
    },
  },
}
