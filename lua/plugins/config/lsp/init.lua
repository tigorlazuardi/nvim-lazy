local function signs_config()
	local signs = { Error = ' ', Warn = ' ', Hint = ' ', Information = ' ' }

	for type, icon in pairs(signs) do
		local hl = 'DiagnosticSign' .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
	end
end

return function(use)
	signs_config()

		require('plugins.config.lsp.rust')(use)
	use({
		'neovim/nvim-lspconfig',
		requires = {
			'ray-x/lsp_signature.nvim',
			'folke/lua-dev.nvim',
			'folke/lsp-colors.nvim',
			'nvim-lua/lsp_extensions.nvim',
			'kosayoda/nvim-lightbulb',
			'simrat39/symbols-outline.nvim',
			{'jose-elias-alvarez/nvim-lsp-ts-utils', wants = {'null-ls.nvim'}},
		},
		wants = { 'telescope.nvim', 'which-key.nvim' },
		config = function()
			local wk = require('which-key')

			wk.register({
				['<leader>l'] = {
					name = '+lsp',
					i = { '<cmd>LspInfo<cr>', 'LSP Info' },
					r = { '<cmd>LspRestart<cr>', 'LSP Restart' },
					S = { '<cmd>LspStop<cr>', 'LSP Stop' },
					s = { '<cmd>LspStart<cr>', 'LSP Start' },
				},
			})
			require('plugins.config.lsp.setup')
		end,
	})
end