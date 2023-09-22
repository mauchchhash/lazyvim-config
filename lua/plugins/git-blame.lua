return {
  "f-person/git-blame.nvim",
  enabled = true,
  cmd = { "GitBlameToggle" },
  keys = {
    { "<leader>uB", "<cmd>GitBlameToggle<cr>", desc = "Toggle Git-Blame" },
  },
}
