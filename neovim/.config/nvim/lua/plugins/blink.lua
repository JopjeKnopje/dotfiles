return {
	"saghen/blink.cmp",
	opts = {
		completion = {
			ghost_text = {
				enabled = false,
			},
		},
		keymap = {

			-- default, enter and super-tab
			preset = 'super-tab',
			['<C-j>'] = { 'select_next', 'fallback' },
			['<C-k>'] = { 'select_prev', 'fallback' },
		}
	},
}
