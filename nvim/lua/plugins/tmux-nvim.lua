return {
  -- "aserowy/tmux.nvim",
  "JopjeKnopje/tmux.nvim",
  config = function()
    require("tmux").setup({
      navigation = {
        -- cycles to opposite pane while navigating into the border
        cycle_navigation = true,

        -- enables default keybindings (C-hjkl) for normal mode
        enable_default_keybindings = true,

        -- prevents unzoom tmux when navigating beyond vim border
        persist_zoom = false,

        auto_zoom = true,
      },
      copy_sync = {
        enable = false,
      },
      resize = {
        -- enables default keybindings (A-hjkl) for normal mode
        enable_default_keybindings = true,
      },
    })
  end,
}
