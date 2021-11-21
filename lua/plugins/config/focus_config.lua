return function(use)
	use({
		'beauwilliams/focus.nvim',
		config = function()
			require('focus').setup({
				signcolumn = false, -- disable sign column only on main window
				excluded_filetypes = { 'calltree' },
			})
		end,
	})
end
