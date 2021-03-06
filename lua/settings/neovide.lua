vim.g.neovide_remember_window_size = true
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_vfx_mode = 'wireframe'
vim.g.neovide_floating_blur = 1
vim.g.neovide_window_floating_opacity = 1

vim.g.neovide_font_size_windows = 14
vim.g.neovide_font_size_linux = 14

if vim.g.is_windows or vim.fn.has('wsl') == 1 then
	vim.cmd([[set guifont=FiraCode\ NF:h]] .. tostring(vim.g.neovide_font_size_windows))
else
	vim.cmd([[set guifont=FiraCode\ Nerd\ Font\ Mono:h]] .. tostring(vim.g.neovide_font_size_linux))
end

_G.font_size = function(increase)
	if increase then
		vim.g.neovide_font_size_windows = vim.g.neovide_font_size_windows + 1
		vim.g.neovide_font_size_linux = vim.g.neovide_font_size_linux + 1
	else
		vim.g.neovide_font_size_windows = vim.g.neovide_font_size_windows - 1
		vim.g.neovide_font_size_linux = vim.g.neovide_font_size_linux - 1
	end
	if vim.g.is_windows or vim.fn.has('wsl') == 1 then
		vim.cmd([[set guifont=FiraCode\ NF:h]] .. tostring(vim.g.neovide_font_size_windows))
	else
		vim.cmd([[set guifont=FiraCode\ Nerd\ Font\ Mono:h]] .. tostring(vim.g.neovide_font_size_linux))
	end
end

vim.api.nvim_set_keymap('n', 'g-', 'v:lua.font_size(v:false)', { expr = true, noremap = true })
vim.api.nvim_set_keymap('n', 'g=', 'v:lua.font_size(v:true)', { expr = true, noremap = true })
