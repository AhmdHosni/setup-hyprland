----------------------------------------------------------------------------------
-- File:          neopywal.lua
-- Created:       Tuesday, 31 March 2026 - 09:34 AM
-- Author:        AhmdHosni (ahmdhosny@gmail.com)
-- Link:
-- Description:   A plugin to adopt colorscheme from pywal colorscheme
----------------------------------------------------------------------------------

-- Using lazy.nvim
return {
	"RedsXDD/neopywal.nvim",
	name = "neopywal",
	lazy = false,
	priority = 1000,
	config = function()
		require("neopywal").setup({
			-- Sets the background color of certain highlight groups to be transparent.
			-- Use this when your terminal opacity is < 1.
			transparent_background = true,
			-- Apply colorscheme for Neovim's terminal (e.g. `g:terminal_color_0`).
			terminal_colors = true,
			-- Handles the styling of certain highlight groups (see `:h highlight-args`).
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = {},
				includes = { "italic" },
				strings = {},
				variables = { "italic" },
				numbers = {},
				booleans = {},
				types = { "italic" },
				operators = {},
			},
		})
		vim.cmd.colorscheme("neopywal-dark")
	end,
}
