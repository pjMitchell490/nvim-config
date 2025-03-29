return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		require("tokyonight").setup({
			style = "moon",
			transparent = true,
		})
		local bg_transparent = true

		local toggle_transparency = function()
			bg_transparent = not bg_transparent
			vim.g.tokyonight_transparent_background = bg_transparent
			vim.cmd([[colorscheme tokyonight]])
		end

		vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })
		vim.cmd([[colorscheme tokyonight]])
	end,
}
