-- add filetypes
vim.filetype.add {
	extension = {
		c3 = "c3",
		c3i = "c3",
		c3t = "c3",
	},
}

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

	-- Install C3 treesitter
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.c3 = {
	install_info = {
		url = "https://github.com/c3lang/tree-sitter-c3",
		files = { "src/parser.c", "src/scanner.c" },
		branch = "main",
	},
}

