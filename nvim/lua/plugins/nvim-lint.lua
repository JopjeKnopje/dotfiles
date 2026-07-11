-- Disable linter for markdown and terraform
return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
				-- TODO make this a toggable
        markdown = {},
        terraform = {},
        tf = {},
      },
    },
  },
}
