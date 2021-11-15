return function (use)
	use({
		'jose-elias-alvarez/null-ls.nvim',
		wants = {"plenary.nvim", "nvim-lspconfig", "which-key.nvim"},
		config = function ()
			require('plugins.config.null_ls_config.setup')
		end,
	})
end
