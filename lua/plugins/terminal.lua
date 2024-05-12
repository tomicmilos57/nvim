return {
	'akinsho/toggleterm.nvim',
	config = function()
		require('toggleterm').setup {
			open_mapping = [[<C-`>]],
			shade_terminals = false,
		}
	end
}
