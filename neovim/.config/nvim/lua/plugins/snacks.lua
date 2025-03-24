return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    scroll = { enabled = false },
    dashboard = { enabled = true },
    scope = { enabled = true },
    bigfile = { enabled = true },
    explorer = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },

    input = { enabled = true },
    picker = {
      enabled = true,
    },

    words = {
      enabled = true,
      debounce = 0,
    },

    indent = {
      enabled = true,
      animate = {
        enabled = false,
      },
      -- if we're doing markdown disable it.
      filter = function(buf)
        if vim.bo.filetype == "markdown" or "docker" then
          return false
        else
          return vim.g.snacks_indent ~= false and vim.b[buf].snacks_indent ~= false and vim.bo[buf].buftype == ""
        end
      end,
    },
  },
}
