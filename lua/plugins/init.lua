local packer, should_sync = require('plugins.bootstrap')

return packer.startup(function(use)
	use({ 'wbthomason/packer.nvim', opt = true })
	use({ 'nvim-lua/plenary.nvim', event = 'VimEnter' })
	use({ 'nvim-lua/popup.nvim', event = 'VimEnter' })
	require('plugins.config.clipboard')(use)
	require('plugins.config.debugger')(use)
	require('plugins.config.indentation')(use)
	require('plugins.config.lsp')(use)
	require('plugins.config.null_ls_config')(use)
	require('plugins.config.windline_config')(use)

	require('plugins.config.bufdelete_config')(use)
	require('plugins.config.bufferline_config')(use)
	require('plugins.config.comment_nvim')(use)
	-- require('plugins.config.coq_config')(use)
	require('plugins.config.dashboard')(use)
	require('plugins.config.discord')(use)
	require('plugins.config.dressing_config')(use)
	require('plugins.config.easy_align')(use)
	-- require('plugins.config.fine_cmdline')(use)
	require('plugins.config.focus_config')(use)
	require('plugins.config.git')(use)
	require('plugins.config.glow')(use)
	require('plugins.config.godot_integration')(use)
	require('plugins.config.golang_enhancement')(use)
	require('plugins.config.headwind_config')(use)
	-- require('plugins.config.kommentary')(use)
	-- require('plugins.config.lightspeed_config')(use)
	-- require('plugins.config.lualine_config')(use)
	require('plugins.config.nvim_cmp')(use)
	require('plugins.config.nvim_tree')(use)
	require('plugins.config.project')(use)
	require('plugins.config.spectre_config')(use)
	require('plugins.config.surround_config')(use)
	require('plugins.config.tabout_config')(use)
	require('plugins.config.telescope_config')(use)
	require('plugins.config.textobjects')(use)
	require('plugins.config.theme')(use)
	require('plugins.config.todo_comments')(use)
	require('plugins.config.toggleterm_config')(use)
	require('plugins.config.treesitter')(use)
	require('plugins.config.trouble_config')(use)
	require('plugins.config.vim_move')(use)
	require('plugins.config.vim_sneak')(use)
	require('plugins.config.which_key')(use)

	require('plugins.buffers')

	if should_sync then
		packer.sync()
	end
end)
