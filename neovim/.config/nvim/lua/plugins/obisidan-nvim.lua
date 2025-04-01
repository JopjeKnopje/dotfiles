local vault_path = "~/Documents/vault"

return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    -- Specify how to handle attachments.
    attachments = {
      -- This is the default
      img_folder = "meta/imgs",

      -- snippet from https://github.com/obsidian-nvim/obsidian.nvim/issues/32
      img_text_func = function(client, path)
        path = client:vault_relative_path(path) or path
        if not path:is_absolute() then
          local p = require("obsidian.path")
          local note = client:vault_relative_path(p.buffer())
          local parents = #note:parents() - 1 -- as parents() also contains the dot dir
          path = tostring(path)
          path = ("../"):rep(parents) .. path
          path = p.new(path)
        end
        return string.format("![%s](%s)", path.name, path)
      end,
    },
    workspaces = {
      {
        name = "personal",
        path = vault_path,
      },
    },

    picker = {
      name = "snacks.pick",
    },

		completion = {
			-- Enables completion using blink.cmp
			blink = true,
			-- Trigger completion at 2 chars.
			min_chars = 0,
		},
    -- see below for full list of options 👇
  },
}
