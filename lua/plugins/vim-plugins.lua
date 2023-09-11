return {
  {
    "kana/vim-textobj-user",
  },
  {
    "kana/vim-textobj-entire",
    dependencies = {
      "kana/vim-textobj-user",
    },
    event = "VeryLazy",
  },
  {
    "kana/vim-textobj-line",
    dependencies = {
      "kana/vim-textobj-user",
    },
    event = "VeryLazy",
  },
  -- {
  --   "tpope/vim-repeat",
  -- },
  {
    "tpope/vim-unimpaired",
  },
}
