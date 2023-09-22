local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>,",
      "<cmd>Telescope buffers show_all_buffers=true ignore_current_buffer=true sort_lastused=true<cr>",
      desc = "Switch Buffer",
    },
    { "<leader><space>", Util.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
    -- find
    { "<leader>ff", Util.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
    { "<leader>fF", false },
    -- git
    { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "commits" },
    { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "status" },
    -- search
    { "<leader>sg", Util.telescope("live_grep", { cwd = false }), desc = "Grep (cwd)" },
    { "<leader>sG", false },
  },
  opts = {
    defaults = {
      prompt_prefix = " ",
      selection_caret = " ",
      mappings = {
        i = {
          ["<c-t>"] = function(...)
            return require("trouble.providers.telescope").open_with_trouble(...)
          end,
          ["<a-t>"] = function(...)
            return require("trouble.providers.telescope").open_selected_with_trouble(...)
          end,
          ["<a-i>"] = function()
            local action_state = require("telescope.actions.state")
            local line = action_state.get_current_line()
            Util.telescope("find_files", { no_ignore = true, default_text = line })()
          end,
          ["<a-h>"] = function()
            local action_state = require("telescope.actions.state")
            local line = action_state.get_current_line()
            Util.telescope("find_files", { hidden = true, default_text = line })()
          end,
          ["<C-Down>"] = function(...)
            return require("telescope.actions").cycle_history_next(...)
          end,
          ["<C-Up>"] = function(...)
            return require("telescope.actions").cycle_history_prev(...)
          end,
          ["<C-f>"] = function(...)
            return require("telescope.actions").preview_scrolling_down(...)
          end,
          ["<C-b>"] = function(...)
            return require("telescope.actions").preview_scrolling_up(...)
          end,

          -- my custom mappings
          ["<C-n>"] = require("telescope.actions").cycle_history_next,
          ["<C-p>"] = require("telescope.actions").cycle_history_prev,
          ["<C-j>"] = require("telescope.actions").move_selection_next,
          ["<C-k>"] = require("telescope.actions").move_selection_previous,
        },
        n = {
          ["q"] = function(...)
            return require("telescope.actions").close(...)
          end,
        },
      },
    },
  },
}
