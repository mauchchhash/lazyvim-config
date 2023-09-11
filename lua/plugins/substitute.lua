return {
  "gbprod/substitute.nvim",
  config = function()
    require("substitute").setup({
      on_substitute = nil,
      yank_substituted_text = false,
      highlight_substituted_text = {
        enabled = true,
        timer = 500,
      },
      range = {
        prefix = "gr",
        prompt_current_text = false,
        confirm = false,
        complete_word = false,
        motion1 = false,
        motion2 = false,
        suffix = "",
      },
      exchange = {
        motion = false,
        use_esc_to_cancel = true,
      },
    })
    -- Lua
    vim.keymap.set("n", "gr", require("substitute").operator, { noremap = true })
    vim.keymap.set("n", "grr", require("substitute").line, { noremap = true })
    -- vim.keymap.set("n", "S", require('substitute').eol, { noremap = true })
    vim.keymap.set("x", "gr", require("substitute").visual, { noremap = true })
  end,
}
