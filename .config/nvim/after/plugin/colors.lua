function Terminal(color)
	color = color or "catppuccin"
    -- color = color or "dracula"
	vim.cmd.colorscheme(color)

	-- Transparency
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

end

Terminal()

