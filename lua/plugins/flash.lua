return {
  "folke/flash.nvim",
  opts = {
    search = {
      mode = function(str)
        return "\\<" .. str
      end,
    },
    label = {
      rainbow = {
        enabled = true,
        -- number between 1 and 9
        shade = 9,
      },
    },
  },
}
