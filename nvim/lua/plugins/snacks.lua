return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    -- use neo-scroll instead
    scroll = { enabled = false },

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
    picker = {
      enabled = true,
      layouts = {
        telescope = {
          layout = {
            backdrop = false,
            width = 0.9,
            height = 0.85,
            reverse = true,
            box = "vertical",
            border = "rounded",
            title = "{title} {live} {flags}",
            title_pos = "center",
            { win = "input", height = 1, border = "bottom" },
            { win = "list", border = "none" },
            { win = "preview", title = "{preview}", height = 0.8, border = "top" },
          },
        },
      },
      layout = "telescope",
    },
  },
}
