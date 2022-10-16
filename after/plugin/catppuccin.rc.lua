local status, n = pcall(require, "catppuccin")
if (not status) then return end

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

n.setup({
  compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
  transparent_background = false,
	term_colors = false,
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
  integrations = {
    treesitter = true,
  },
})

vim.api.nvim_command "colorscheme catppuccin"
