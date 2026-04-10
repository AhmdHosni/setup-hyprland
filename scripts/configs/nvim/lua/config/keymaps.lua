----------------------------------------------------------------------------------
-- File:          keymaps.lua
-- Created:       Saturday, 24 January 2026 - 07:51 AM
-- Author:        AhmdHosni (ahmdhosny@gmail.com)
-- Link:
-- Description:   this file has most of the Keymaps for neovim (except the plugin spicific)
----------------------------------------------------------------------------------

-- ###########################
-- Center screen when jumping
-- ###########################
--
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- #########################
-- Format code using conform
-- #########################
--

vim.keymap.set("n", "<leader>cf", function()
	require("conform").format({
		lsp_format = "fallback",
	}, function(err)
		if not err then
			vim.notify("File formatted successfully!", vim.log.levels.INFO, {})
		end
	end)
end, { desc = "Format current file" })

-- ################
-- Open diagnostics
-- ################
--
vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

-- #################
-- Buffer navigation
-- #################
--
vim.keymap.set("n", "<leader>bn", "<Cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "<Cmd>bprevious<CR>", { desc = "Previous buffer" })

-- ########################
-- Better window navigation
-- ########################
--
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- ####################
-- Splitting & Resizing
-- ####################
--
vim.keymap.set("n", "<leader>sv", "<Cmd>vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<Cmd>split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-Up>", "<Cmd>resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<Cmd>resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<Cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<Cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- ###############################
-- Better indenting in visual mode
-- ###############################
--
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- #################
-- Better J behavior
-- #################
--
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- ####################
-- Quick config editing
-- ####################
vim.keymap.set("n", "<leader>rc", "<Cmd>e ~/.config/nvim/init.lua<CR>", { desc = "Edit config" })

-- ###################
-- File Explorer (oil)
-- ###################
--
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open Parent Directory in Oil" })

-- ########################################
-- open diagnostic floating windo in neovim
-- ########################################
--
vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

-- format code using conform plugin
-- vim.keymap.set("n", "<leader>i", function()
--     require("conform").format({
--         lsp_format = "fallback",
--     })
-- end, { desc = "Format current file" })

-- Format code using coform if present
-- local has_conform, conform = pcall(require, "conform")
-- if has_conform then
-- 	vim.keymap.set("n", "<leader>cf", function()
-- 		require("conform").format({
-- 			lsp_format = "fallback",
-- 			async = true, -- Optional: helps keep UI responsive
-- 		}, function(err)
-- 			if not err then
-- 				vim.notify("File formatted successfully!", vim.log.levels.INFO, {
-- 					title = "Conform",
-- 				})
-- 			end
-- 		end)
-- 	end, { desc = "Format current file" })
-- end

-- Update Lazy and Mason plugins
-- Custom function to update both Lazy and Mason
local function update_all()
	-- 1. Update Lazy.nvim plugins
	-- 'sync' installs missing, cleans unused, and updates the rest
	require("lazy").sync({ show = false })

	-- 2. Update Mason registries and packages
	-- We use vim.cmd to call the Mason update commands directly
	vim.cmd("MasonUpdate")

	-- Notify the user
	vim.notify("Update started: Lazy syncing and Mason registry updating...", vim.log.levels.INFO)
end

-- Create the user command
vim.api.nvim_create_user_command("UpdateAll", update_all, {})

-- Map it to a keybind (e.g., <leader>uu)
vim.keymap.set("n", "<leader>uu", ":UpdateAll<CR>", { desc = "Update Lazy and Mason" })
